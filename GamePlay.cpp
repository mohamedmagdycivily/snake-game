#include "GamePlay.hpp"
#include "GameOver.hpp"
#include "PauseGame.hpp"

#include <time.h>
#include <algorithm>

GamePlay::GamePlay(std::shared_ptr<Context> &context)
    :m_context{context},
    m_snakeDirection({16.f, 0}),
    m_elapsedTime(sf::Time::Zero),
    m_score{0},
    m_isPaused{false}
{
    srand(time(NULL));
}

GamePlay::~GamePlay()
{
}

void GamePlay::Init() 
{
    m_context->m_assets->AddTexture(GRASS,"/home/mohamed/Desktop/MY_CODE/Game_Project/Snake2/assets/textures/grass.png", true);
    m_context->m_assets->AddTexture(FOOD, "/home/mohamed/Desktop/MY_CODE/Game_Project/Snake2/assets/textures/food.png", false);
    m_context->m_assets->AddTexture(WALL, "/home/mohamed/Desktop/MY_CODE/Game_Project/Snake2/assets/textures/wall.png", true);
    m_context->m_assets->AddTexture(SNAKE, "/home/mohamed/Desktop/MY_CODE/Game_Project/Snake2/assets/textures/snake.png", false);
    
    //set Grass
    m_grass.setTexture(m_context->m_assets->GetTexture(GRASS));
    m_grass.setTextureRect(m_context->m_window->getViewport(m_context->m_window->getDefaultView()));
    
    //set Walls
    for(auto &wall : m_walls)
    {
       wall.setTexture(m_context->m_assets->GetTexture(WALL));
    }
    m_walls[0].setTextureRect(sf::IntRect{0, 0, static_cast<int>(m_context->m_window->getSize().x), 16});
    m_walls[1].setTextureRect(sf::IntRect{0, 0, static_cast<int>(m_context->m_window->getSize().x), 16});
    m_walls[1].setPosition(0, m_context->m_window->getSize().y - 16);
    
    m_walls[2].setTextureRect(sf::IntRect{0, 0, 16, static_cast<int>(m_context->m_window->getSize().y)});
    m_walls[3].setTextureRect(sf::IntRect{0, 0, 16, static_cast<int>(m_context->m_window->getSize().y)});
    m_walls[3].setPosition(m_context->m_window->getSize().x - 16, 0);
    
    //set Food
    m_food.setTexture(m_context->m_assets->GetTexture(FOOD));
    m_food.setPosition(m_context->m_window->getSize().x/2, m_context->m_window->getSize().y/2);
    
    //Snake
    m_snake.Init(m_context->m_assets->GetTexture(SNAKE));
    
    //score
    m_scoreText.setFont(m_context->m_assets->GetFont(MAIN_FONT));
    m_scoreText.setString("Score: " + std::to_string(m_score));
    m_scoreText.setCharacterSize(15);
}

void GamePlay::ProcessInput() 
{
    sf::Event event;
    while (m_context->m_window->pollEvent(event))
    {
        if (event.type == sf::Event::Closed)
        {
            m_context->m_window->close();
        }
        else if (event.type == sf::Event::KeyPressed)
        {
            sf::Vector2f newDirection{m_snakeDirection};
            
            switch(event.key.code)
            {
                case sf::Keyboard::Up:
                {
                    newDirection = {0, -16.f};
                    break;
                }
                case sf::Keyboard::Down:
                {
                    newDirection = {0, +16.f};
                    break;
                }
                case sf::Keyboard::Right:
                {
                    newDirection = {+16.f, 0};
                    break;
                }
                case sf::Keyboard::Left:
                {
                    newDirection = {-16.f, 0};
                    break;
                }
                case sf::Keyboard::Escape:
                {
                    m_context->m_states->Add(std::make_unique<PauseGame>(m_context));
                    break;
                }
                default:
                break;
            }
            
            if (std::abs(newDirection.x) != std::abs(m_snakeDirection.x) && 
                std::abs(newDirection.y) != std::abs(m_snakeDirection.y))
                    m_snakeDirection = newDirection;
        }
    }
}

void GamePlay::Update(sf::Time deltaTime) 
{
    if(!m_isPaused)
    {
        m_elapsedTime += deltaTime;
        if(m_elapsedTime.asSeconds() > .1)
        {
            //intersect with wall 
    //        bool isOnWall = false;
            for(auto &wall : m_walls)
            {
                if(m_snake.IsOn(wall))
                {
                    m_context->m_states->Add(std::make_unique<GameOver>(m_context), true);
                    break;
                }
            }
            
            //intersect with his body
            if(m_snake.IsSelfIntersecting())
            {
                m_context->m_states->Add(std::make_unique<GameOver>(m_context), true);
            }
            
            //intersect with food 
            if(m_snake.IsOn(m_food))
            {
    //            m_snake.Grow(m_snakeDirection);
    //            m_snake.Grow(m_snakeDirection);
    //            m_snake.Grow(m_snakeDirection);
                m_snake.Grow(m_snakeDirection);
                
                //randomize food 
                int x{},y{};
                x = std::clamp<int>(rand() % m_context->m_window->getSize().x, 16.f, m_context->m_window->getSize().x - 2*16);
                y = std::clamp<int>(rand() % m_context->m_window->getSize().y, 16.f, m_context->m_window->getSize().y - 2*16);
                m_food.setPosition(x, y);
                
                //Add Score
                m_score++;
                m_scoreText.setString("Score: " + std::to_string(m_score));
            }
            else //move Snake
            {
                m_snake.Move(m_snakeDirection);
            }
            
            m_elapsedTime = sf::Time::Zero;
            
        }
    }
}

void GamePlay::Draw() 
{
    m_context->m_window->clear();
    
    //draw grass
    m_context->m_window->draw(m_grass);
    
    //draw Wall
    for(auto &wall : m_walls)
    {
       m_context->m_window->draw(wall);
    }
    
    //draw Food
    m_context->m_window->draw(m_food);
    
    //draw Snake
    m_snake.draw(m_context->m_window.get());
    
    //draw Score
    m_context->m_window->draw(m_scoreText);
    
    m_context->m_window->display();
}


void GamePlay::Pause() 
{
    m_isPaused = true;
}

void GamePlay::Start() 
{
    m_isPaused = false;
}

