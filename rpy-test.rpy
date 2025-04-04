# This is a comment. It is ignored by the game.

define e = Character("Eileen")  # Define a character named Eileen
define j = Character("John")    # Define a character named John

# The start of the game script
label start:
    e "Hello, John. How are you today?"  # Eileen speaks
    j "I'm doing well, thanks for asking."  # John responds

    e "Would you like to go for a walk?"  # Eileen asks a question
    menu:  # A menu appears with options for the player to choose from
        "Yes, I would love to!":
            e "Great! Let's go!"
            j "I'm looking forward to it."
            jump walk  # Jump to the "walk" label

        "No, I'm too tired.":
            e "Oh, that's too bad."
            j "Maybe next time."
            jump end  # Jump to the "end" label

label walk:
    e "It's a beautiful day outside."
    return  # Return to the previous label (or end the script)

label end:
    e "Thanks for playing!"
    return  # End the game
