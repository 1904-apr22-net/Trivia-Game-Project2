﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using TriviaGame.DataAccess.Repositories;
using TriviaGame.Library.Interfaces;
using TriviaGame.Library.Models;

namespace TriviaGame.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class QuestionController : ControllerBase
    {
        public IUserRepository UserRepo { get; set; }
        public IQuizRepository QuizRepo { get; set; }
        public IQuestionRepository QuestionRepo { get; set; }

        public QuestionController(IUserRepository userRepo, IQuizRepository quizRepo, IQuestionRepository questionRepo)
        {
            UserRepo = userRepo;
            QuizRepo = quizRepo;
            QuestionRepo = questionRepo;
        }

        // GET: api/Question
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Question>>> Get()
        {
            var questions= await QuestionRepo.GetQuestions();
            if(questions==null)
            {
                return NotFound();
            }
            return Ok(questions);
        }

        // GET: api/Question/5
        [HttpGet("{id}", Name = "Get")]
        public async Task<ActionResult<Question>> Get(int id)
        {
            // if(await QuestionRepo.GetQuestionById(id) is Question question)
            //{
            // return question;
            //}
            //return NotFound();
            var result = await QuestionRepo.GetQuestionById(id);
            return result;
        }
        [HttpGet]
        [Route("GetQuestionsByCategory/{id}")]
        public IEnumerable<Question> GetQuestionsByCategory(int id)
        {
            return QuestionRepo.GetQuestionsByCategoryId(id);
        }

        // POST: api/Question
        [HttpPost]
        public async Task<IActionResult> Post([FromBody] Question question)
        {
            try
            {
                var id = await QuestionRepo.CreateQuestion(question);

                Question model = await QuestionRepo.GetQuestionById(id);

                return CreatedAtRoute("Get", new { Id = id }, model);
            }
            catch (ArgumentException ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // PUT: api/Question/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}