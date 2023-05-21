#include <SFML/Graphics.hpp>
#include "Floraft.h"


int main() {
    sf::RenderWindow window(sf::VideoMode(800, 600), "Sandbox");
    Floraft engine;


    while (window.isOpen()) {
        sf::Event event;


        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed)
                window.close();
        }

        window.clear();
        
        // Call the Floraft engine's drawShape function to draw the shape
        engine.drawShape(window);
        window.display();
    }

    return 0;
}

