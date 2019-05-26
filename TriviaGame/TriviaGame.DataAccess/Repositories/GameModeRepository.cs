using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TriviaGame.DataAccess.Entities;
using TriviaGame.Library.Interfaces;

namespace TriviaGame.DataAccess.Repositories
{
    public class GameModeRepository : IGameModeRepository
    {
        private readonly TriviaGameDbContext _dbContext;
        private readonly ILogger<GameModeRepository> _logger;

        GameModeRepository(TriviaGameDbContext dbContext, ILogger<GameModeRepository> logger)
        {
            _dbContext = dbContext ?? throw new ArgumentNullException(nameof(dbContext));
            _logger = logger ?? throw new ArgumentNullException(nameof(logger));
        }

        public IEnumerable<Library.Models.GameMode> GetGameModes(string search = null)
        {
            try
            {
                IQueryable<GameMode> items = _dbContext.GameMode;
                if(search != null)
                {
                    items = _dbContext.GameMode.Where(g => g.GameMode1 == search);
                }
                return Mapper.Map(items.AsNoTracking());
            }
            catch
            {
                return null;
            }
        }
    }
}
