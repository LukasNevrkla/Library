using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Library_Manager.Models;

namespace Library_Manager.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BooksController : ControllerBase
    {
        private readonly LibraryContext _context;

        public BooksController(LibraryContext context)
        {
            _context = context;
        }
        /*
        // GET: api/Books
        [HttpGet]
        public IActionResult GetBooks(string order) //api/Books?order=Name
        {
            //return _context.Books;

            try
            {
                string Query = "SELECT * FROM dbo.Books ";
                if (order != null) Query += "ORDER BY " + order + ";";

                return Ok(_context.Books.FromSql(Query).ToList());
            }
            catch { }

            return NotFound();
        }*/
        [HttpGet]
        public IActionResult GetBooks(string query) //api/Books?query=...
        {
            try
            {/*
                string Query = "SELECT * FROM dbo.Books ";
                if (order != null) Query += "ORDER BY " + order + ";";
                */
                if (query!=null) return Ok(_context.Books.FromSql(query).ToList());
                else return Ok(_context.Books);
            }
            catch { }

            return NotFound();
        }

        // GET: api/Books/5
        [HttpGet("{id}")]
        public async Task<IActionResult> GetBooks([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var books = await _context.Books.FindAsync(id);

            if (books == null)
            {
                return NotFound();
            }

            return Ok(books);
        }


        [HttpPut("{id}")]
        public async Task<IActionResult> PutBooks(int id, Books books)
        {
            var b = await _context.Books.FindAsync(id);
            if (b == null)
            {
                return NotFound();
            }

            b.Name = books.Name;
            b.Author = books.Author;
            b.Translation = books.Translation;
            b.PublicationDate = books.PublicationDate;

            _context.Update(b);
            _context.SaveChanges();

            return Ok(books);
        }

        // POST: api/Books
        [HttpPost]
        public async Task<IActionResult> PostBooks([FromBody] Books books)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            _context.Books.Add(books);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetBooks", new { id = books.Id }, books);
        }

        // DELETE: api/Books/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteBooks([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var books = await _context.Books.FindAsync(id);
            if (books == null)
            {
                return NotFound();
            }

            _context.Books.Remove(books);
            await _context.SaveChangesAsync();

            return Ok(books);
        }

        private bool BooksExists(int id)
        {
            return _context.Books.Any(e => e.Id == id);
        }
    }
}