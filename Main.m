%% Main File for Yahtzee 
%loading the dice
load Dice.mat

Yes = 1;
No = 0;


%% This is the main menu 

fprintf('Welcome to Yahtzee\n')
fprintf('Would you like to play?\n')
Menu = input('Yes or No? \n'); 
% User confirmation to start program 
if Menu == 0
    fprintf ('Have a great day.')
    quit
else
    fprintf('Okay then lets start the game!\n')
end

finishUp = 0;
full = 0;


while full<5


%% This is the first Role
% Roles dice randomly 
role = randi([1 6], [1 5]);
% displays dice
imshow([Dice{role}]);

%% This is the start of the first ReRole
% used for troubleshooting issues in rerole function
reference = role ;
% asking user what dice they would like to rerole
rerole = input('Would you like to rerole any dice?\n');

if rerole == 1

    NR1 = input('Would you like to rerole dice 1?  ');
    NR2 = input('Would you like to rerole dice 2?  ');
    NR3 = input('Would you like to rerole dice 3?  ');
    NR4 = input('Would you like to rerole dice 4?  ');
    NR5 = input('Would you like to rerole dice 5?  ');
    % a random array for later use 
    role2 = randi([1 6], [1 5]);
    % which dice to replace and what numbers to replace them with 
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
    % displays new roll  
    imshow([Dice{reference}]);

%% This is the start of the second ReRole
% asking user if they would like to rerole
    rerole = input('Would you like to rerole any dice?\n');
%asking user what dice they would like to rerole
    if rerole == 1
        NR1 = input('Would you like to rerole dice 1?  ');
        NR2 = input('Would you like to rerole dice 2?  ');
        NR3 = input('Would you like to rerole dice 3?  ');
        NR4 = input('Would you like to rerole dice 4?  ');
        NR5 = input('Would you like to rerole dice 5?  ');
        % a random array for later use 
        role3 = randi([1 6], [1 5]);
        % which dice to replace and what numbers to replace them with 
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
        %displays the new dice roll
        imshow([Dice{reference}]);
        
            
        fprintf('Okay next turn \n')
    else
        fprintf('Okay next turn! \n')
    end
else
    
end


fprintf('Time to select your catagory! \n')


total = sum(reference);

%% This is the start of the Upper Section of catagories

up = [0 0 0 0 0 0];

fprintf('You must first select a catagory you would like to score in the upper section. \n')
%counts the number of each dice in its catagory
up(1) = sum(reference(:) == 1);
up(2) = sum(reference(:) == 2);
up(3) = sum(reference(:) == 3);
up(4) = sum(reference(:) == 4);
up(5) = sum(reference(:) == 5);
up(6) = sum(reference(:) == 6);

%for corectly scorring each catagory 
Aces = up(1) * 1;
Twos = up(2) * 2;
Threes = up(3) * 3;
Fours = up(4) * 4;
Fives = up(5) * 5;
Sixes = up(6) * 6;


upScore = input('You may choose between Aces, Twos, Threes, Fours, Fives, Sixes:    ');

full = full + 1;

fprintf('Okay next turn \n')

finishUp = finishUp + upScore;
end
fprintf('Your total score in the upper section is: %g', finishUp);
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
% if you get a yahtzee   
if any(up == 5)
    lowScore = 50;
    fprintf('Wow you got a Yahtzee')
end
% four of a kind 
if any(up == 4)
    lowScore = total;
    fprintf('Wow you got a four of a kind!')
end
% full house 
if any(up ==3 & up == 2)
    lowScore = 25;
    fprintf('Wow you got a full house!')
end
% three of a kind 
if any(up == 3)
    lowScore = total;
    fprintf('Wow you got a Three of a kind!')
end
% large straight
if any( up > 1)
    lowScore = 40;
    fprintf('Wow you got a Large Straight')
end
% end score
gameScore = finishUp + lowScore;
