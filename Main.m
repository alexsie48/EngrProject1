%% Main File
%% this is where most of the code will go
load Dice.mat

Yes = 1;
No = 0;

fprintf('Welcome to yatzee\n')
fprintf('would you like to play?\n')
Menu = input('Yes or No? \n'); 

if Menu == 0
    fprintf ('Have a great day.')
    quit
else
    fprintf('Okay then lets start the game!')
end


%%Dice = zeros(1,6);

role = randi([1 6], [1 5])
%%roles dice using random numbers

%%this dispays the role using the Dice.mat file
imshow([Dice{role}]);

fprintf('Would you like to rerole any dice?\n')

redo = input('list the dice which you would like to rerole:   ')



