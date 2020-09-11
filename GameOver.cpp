#include "GameOver.hpp"
#include "GamePlay.hpp"

#include <iostream>

GameOver::GameOver(std::shared_ptr<Context> &context):m_context{context},
    m_isExitButtonPressed{false}, m_isExitButtonSelected{false},
    m_isRetryButtonPressed{false}, m_isRetryButtonSelected{true}
{
}


GameOver::~GameOver()
{
}

void GameOver::Init()
{
    m_context->m_assets->AddFont(MAIN_FONT, "/home/mohamed/Desktop/MY_CODE/Game_Project/Snake2/assets/fonts/Pacifico-Regular.ttf");
    
    //Game_over_title
    m_gameOverTitle.setFont(m_context->m_assets->GetFont(MAIN_FONT));
    m_gameOverTitle.setString("Game Over");
    m_gameOverTitle.setOrigin(m_gameOverTitle.getLocalBounds().width/2,
                          m_gameOverTitle.getLocalBounds().height/2);
    m_gameOverTitle.setPosition(m_context->m_window->getSize().x/2, 
                            m_context->m_window->getSize().y/2 - 150.f);
    
    //RetryButton
    m_retryButton.setFont(m_context->m_assets->GetFont(MAIN_FONT));
    m_retryButton.setString("Retry");
    m_retryButton.setOrigin(m_retryButton.getLocalBounds().width/2,
                          m_retryButton.getLocalBounds().height/2);
    m_retryButton.setPosition(m_context->m_window->getSize().x/2, 
                            m_context->m_window->getSize().y/2 - 25.f);
    m_retryButton.setCharacterSize(20);
    
    //ExitButton
    m_exitButton.setFont(m_context->m_assets->GetFont(MAIN_FONT));
    m_exitButton.setString("Exit");
    m_exitButton.setOrigin(m_exitButton.getLocalBounds().width/2,
                          m_exitButton.getLocalBounds().height/2);
    m_exitButton.setPosition(m_context->m_window->getSize().x/2, 
                            m_context->m_window->getSize().y/2 + 25.f);
    m_exitButton.setCharacterSize(20);
}

void GameOver::ProcessInput()
{
    sf::Event event;
    while (m_context->m_window->pollEvent(event))
    {
        if (event.type == sf::Event::Closed)
            m_context->m_window->close();
        else if(event.type == sf::Event::KeyPressed)
        {
            switch(event.key.code)
            {
                case sf::Keyboard::Up:
                {
                    if(!m_isRetryButtonSelected){
                        m_isRetryButtonSelected = true;
                        m_isExitButtonSelected = false;
                    }
                    break;
                }
                case sf::Keyboard::Down:
                {
                    if(!m_isExitButtonSelected){
                        m_isExitButtonSelected = true;
                        m_isRetryButtonSelected = false;
                    }
                    break;
                }
                case sf::Keyboard::Return:
                {
                    if(m_isRetryButtonSelected){
                        m_isRetryButtonPressed = true;
                        m_isExitButtonPressed = false;
                    }
                    else{
                        m_isRetryButtonPressed = false;
                        m_isExitButtonPressed = true;
                    }
                    break;
                }
                default:
                break;
            }
        }
    }
}

void GameOver::Update(sf::Time deltaTime)
{
    //update the selected Button
    if(m_isRetryButtonSelected)
    {
        m_retryButton.setFillColor(sf::Color::Yellow);
        m_exitButton.setFillColor(sf::Color::White);
    }
    else
    {
        m_exitButton.setFillColor(sf::Color::Yellow);
        m_retryButton.setFillColor(sf::Color::White);
    }
    
    //update the state Play state or Exit state
    if(m_isRetryButtonPressed)
    {
        m_context->m_states->Add(std::make_unique<GamePlay>(m_context), true);
    }
    else if(m_isExitButtonPressed)
    {
        m_context->m_window->close();
    }
}

void GameOver::Draw()
{
    m_context->m_window->clear(sf::Color::Blue);
    
    m_context->m_window->draw(m_gameOverTitle);
    m_context->m_window->draw(m_retryButton);
    m_context->m_window->draw(m_exitButton);
    
    m_context->m_window->display();
}


