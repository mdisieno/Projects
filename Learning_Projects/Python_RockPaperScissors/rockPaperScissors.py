#random is used to make a random choice of what I have.
import sys, random
userAction = input("Enter a choice(rock, paper, scissors): ")
possibleActions = ["rock","paper","scissors"]
#have it pic a choice from above array
computerAction = random.choice(possibleActions)
print(f"\nYou chose {userAction}, the computer chose {computerAction}.\n")
if userAction == computerAction:
    print(f"Both players selected {userAction}, its a tie!")
elif userAction == "rock":
    if computerAction == "scissors":
        print("Rock smashes scissors! You win!")
    else:
        print("Paper covers rock! You lose.")
elif userAction == "paper":
    if computerAction == "rock":
        print("Paper covers rock! You win!")
    else:
        print("Scissors cuts paper! You lose.")
elif userAction == "scissors":
    if computerAction == "paper":
        print("Scissors cuts paper! You win!")
    else:
        print("Rock smashes scissors! You lose.")