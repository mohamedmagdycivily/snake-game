#ifndef SNAKE_HPP
#define SNAKE_HPP

#include <SFML/Graphics.hpp>

#include <list>

class Snake
{
private:
    std::list<sf::Sprite> m_body;
    
    std::list<sf::Sprite> :: iterator m_head;
    std::list<sf::Sprite> :: iterator m_tail;
    
public:
    Snake();
    ~Snake();
    
    void Init(const sf::Texture &texture);
    void Move(const sf::Vector2f &direction);
    bool IsOn(const sf::Sprite &other);
    void Grow(const sf::Vector2f &direction);
    bool IsSelfIntersecting() const;
    
    void draw(sf::RenderTarget *target);
};

#endif // SNAKE_HPP
