#include <SFML/Graphics/CircleShape.hpp>
#include <SFML/Graphics.hpp>

#include "Game.hpp"
#include "MainMenu.hpp"

Game::Game():m_context{std::make_shared<Context>()} 
{
    m_context->m_window->create(sf::VideoMode(640, 352), "Snake Game");
     
    m_context->m_states->Add(std::make_unique<MainMenu>(m_context), false);
    
//    m_context->m_window->setFramerateLimit(60);
}

Game::~Game()
{
}

void Game::run()
{
    sf::CircleShape shape(100.f);
    shape.setFillColor(sf::Color::Green);
    
    sf::Clock clock;
    sf::Time timeSinceLastFrame = sf::Time::Zero;
    
    while (m_context->m_window->isOpen())
    {
        timeSinceLastFrame += clock.restart();
        
        while(timeSinceLastFrame > TIME_PER_FRAME)
        {
            timeSinceLastFrame -= TIME_PER_FRAME;
            
            m_context->m_states->ProcessStateChange();
            m_context->m_states->GetCurrent()->ProcessInput();
            m_context->m_states->GetCurrent()->Update(TIME_PER_FRAME);
            m_context->m_states->GetCurrent()->Draw();
            
        }
    }
}
