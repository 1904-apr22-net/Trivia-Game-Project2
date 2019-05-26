using System.Collections.Generic;
using System.Threading.Tasks;
using TriviaGame.Library.Models;

namespace TriviaGame.DataAccess.Repositories
{
    public interface IGameModeRepository
    {
       IEnumerable<GameMode> GetGameModes(string search = null);
    }
}