%% Main File
    %%This is where most of the code will go
load Dice.mat

Yes = 1;
No = 0;


%% This is the main menu Prompt

fprintf('Welcome to yatzee\n')
fprintf('would you like to play?\n')
Menu = input('Yes or No? \n'); 

if Menu == 0
    fprintf ('Have a great day.')
    quit
else
    fprintf('Okay then lets start the game!\n')
end
    %%just a check for user to confirm start of program

%% This is the first Role

role = randi([1 6], [1 5]);
    %%roles dice using random numbers

imshow([Dice{role}]);
    %%this dispays the role using the Dice.mat file


%% This is the start of the first ReRole

reference = role ;
    %%used for troubleshooting issues in ReRole function
    %%a copy of the original role so i can reference back to the original

rerole = input('Would you like to rerole any dice?\n');

if rerole == 1

    NR1 = input('Would you like to rerole dice 1?  ');
    NR2 = input('Would you like to rerole dice 2?  ');
    NR3 = input('Would you like to rerole dice 3?  ');
    NR4 = input('Would you like to rerole dice 4?  ');
    NR5 = input('Would you like to rerole dice 5?  ');
        %%used for determining what dice need to be rerolled at the request
        %%of the user

    role2 = randi([1 6], [1 5]);
        %%a new random number aray for later use

    if NR1 == 1
        reference(1) = role2(1);
    end

    if NR2 == 1
        reference(2) = role2(2);
    end

    if NR3 == 1
        reference(3) = role2(3);
    end

    if NR4 == 1
        reference(4) = role2(4);
    end

    if NR5 == 1
        reference(5) = role2(5);
    end
        %%based on the users selection these conditional statements replace
        %%the original dice roles with the new coresponding dice values

    imshow([Dice{reference}]);
        %%displays the new dice roll

%% This is the start of the second ReRole

    rerole = input('Would you like to rerole any dice?\n');

    if rerole == 1
        NR1 = input('Would you like to rerole dice 1?  ');
        NR2 = input('Would you like to rerole dice 2?  ');
        NR3 = input('Would you like to rerole dice 3?  ');
        NR4 = input('Would you like to rerole dice 4?  ');
        NR5 = input('Would you like to rerole dice 5?  ');
            %%used for determining what dice need to be rerolled at the request
            %%of the user
        
        role3 = randi([1 6], [1 5]);
            %%a new random number aray for later use
        
        if NR1 == 1
            reference(1) = role3(1);
        end

        if NR2 == 1
            reference(2) = role3(2);
        end

        if NR3 == 1
            reference(3) = role3(3);
        end

        if NR4 == 1
            reference(4) = role3(4);
        end

        if NR5 == 1
            reference(5) = role3(5);
        end
            %%based on the users selection these conditional statements replace
            %%the original dice roles with the new coresponding dice values

        imshow([Dice{reference}]);
            %%displays the new dice roll
            
        fprintf('Time to select your catagory! \n')
    else
        fprintf('Time to select your catagory! \n')
    end
else
    fprintf('Time to select your catagory! \n')
end


%% This is the start of the Upper Section of catagories

fprintf('You must first select a catagory you would like to score in the upper section. \n')

Ace = sum(reference(:) == 1);
Two = sum(reference(:) == 2);
Three = sum(reference(:) == 3);
Four = sum(reference(:) == 4);
Five = sum(reference(:) == 5);
Six = sum(reference(:) == 6);
    %%counts the number of each dice in its catagory

Aces = Ace * 1;
Twos = Two * 2;
Threes = Three * 3;
Fours = Four * 4;
Fives = Five * 5;
Sixes = Six * 6;
    %%for corectly scorring each catagory 

upScore = input('You may choose between Aces, Twos, Threes, Fours, Fives, Sixes:    ');

fprintf('Your total score in the upper section is: %g', upScore);
%% This is the start of the Lower Section of catagories

fprintf('\nYou must now select a catagory you would like to score in the lower section. \n')




