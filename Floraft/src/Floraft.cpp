#include "Floraft.h"

Floraft::Floraft() {
    // Engine initialization code goes here (if any)
}

void Floraft::drawShape(sf::RenderWindow& window) {
    // Drawing code goes here
    sf::CircleShape shape(100);
    shape.setFillColor(sf::Color::Red);
    shape.setPosition(100, 100);
    window.draw(shape);
}

