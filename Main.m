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

total = sum(reference);

%% This is the start of the Upper Section of catagories

up = [0 0 0 0 0 0];

fprintf('You must first select a catagory you would like to score in the upper section. \n')

up(1) = sum(reference(:) == 1);
up(2) = sum(reference(:) == 2);
up(3) = sum(reference(:) == 3);
up(4) = sum(reference(:) == 4);
up(5) = sum(reference(:) == 5);
up(6) = sum(reference(:) == 6);
    %%counts the number of each dice in its catagory

Aces = up(1) * 1;
Twos = up(2) * 2;
Threes = up(3) * 3;
Fours = up(4) * 4;
Fives = up(5) * 5;
Sixes = up(6) * 6;
    %%for corectly scorring each catagory 

upScore = input('You may choose between Aces, Twos, Threes, Fours, Fives, Sixes:    ');

fprintf('Your total score in the upper section is: %g', upScore);
%% This is the start of the Lower Section of catagories

fprintf('\nYou must now select a catagory you would like to score in the lower section. \n')
lowScore = 0;
%%n = 0;
%%i=0;
%%while i<7
%    if sum(reference(:) == i) == 3
%       fprintf('no\n');
%        i=i+1;
%        n=i;
%    else
%        fprintf('congrats dude');
        
%    end
%end
    %%This loop is currently not working. comment out if a run is required.
    
if any(up == 5)
    lowScore = 50;
    fprintf('Wow you got a Yahtzee')
end

if any(up == 4)
    lowScore = total;
    fprintf('Wow you got a four of a kind!')
end

if any(up ==3 & up == 2)
    lowScore = 25;
    fprintf('Wow you got a full house!')
end

if any(up == 3)
    lowScore = total;
    fprintf('Wow you got a Three of a kind!')
end

if any( up > 1)
    lowScore = 40;
    fprintf('Wow you got a Large Straight')
end


gameScore = upScore + lowScore;
%%not a hunred percent sure if this how yahtzee works lol
