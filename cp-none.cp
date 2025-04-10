#include <iostream>

// Function to greet the user
void greet(std::string name) {
    std::cout << "Hello, " << name << "! Welcome to the .cp file example." << std::endl;
}

int main() {
    std::string username;
    std::cout << "Enter your name: ";
    std::cin >> username;

    // Call the greet function
    greet(username);

    return 0; // Successful program exit
}
