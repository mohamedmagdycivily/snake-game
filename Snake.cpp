#include "Snake.hpp"

#include <iostream>

Snake::Snake():m_body{std::list<sf::Sprite>(4)}
{
    m_head = --m_body.end();
    m_tail = m_body.begin();
}

Snake::~Snake()
{
}

void Snake::Init(const sf::Texture &texture)
{
    float x{16.f};
    for(auto &piece : m_body)
    {
        piece.setTexture(texture);
        piece.setPosition(x, 16.f);
        x += 16;
    }
}

void Snake::Move(const sf::Vector2f &direction)
{
    m_tail->setPosition(m_head->getPosition() + direction);
    m_head = m_tail;
    m_tail++;
    
    if(m_tail == m_body.end()){
        m_tail = m_body.begin();
    }
}

bool Snake::IsOn(const sf::Sprite &other)
{
    return other.getGlobalBounds().intersects(m_head->getGlobalBounds());
}

void Snake::Grow(const sf::Vector2f &direction)
{
    sf::Sprite newPiece;
    newPiece.setTexture(*(m_head->getTexture()));
    newPiece.setPosition(m_head->getPosition() + direction);
    
    m_head = m_body.insert(++m_head, newPiece);
}

bool Snake::IsSelfIntersecting() const
{
    auto it = m_body.begin();
    for(auto &piece : m_body)
    {
        if(m_head != it && m_head->getGlobalBounds().intersects(piece.getGlobalBounds()))
        {
            return true;
        }
        it++;
    }
    
    return false;
}

void Snake::draw(sf::RenderTarget *target)
{
    for(auto &piece : m_body)
    {
        target->draw(piece);
    }
}
