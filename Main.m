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

role = randi([1 6], [1 5]);
%%roles dice using random numbers

%%this dispays the role using the Dice.mat file
imshow([Dice{role}]);

reference = role ;

rerole = input('Would you like to rerole any dice?\n');

%%redo = input('list the dice which you would like to rerole:   ')

if rerole == 1

    NR1 = input('Would you like to rerole dice 1?  ');
    NR2 = input('Would you like to rerole dice 2?  ');
    NR3 = input('Would you like to rerole dice 3?  ');
    NR4 = input('Would you like to rerole dice 4?  ');
    NR5 = input('Would you like to rerole dice 5?  ');


    role2 = randi([1 6], [1 5]);

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


    imshow([Dice{reference}]);




    rerole = input('Would you like to rerole any dice?\n');

    if rerole == 1
        NR1 = input('Would you like to rerole dice 1?  ');
        NR2 = input('Would you like to rerole dice 2?  ');
        NR3 = input('Would you like to rerole dice 3?  ');
        NR4 = input('Would you like to rerole dice 4?  ');
        NR5 = input('Would you like to rerole dice 5?  ');

        role3 = randi([1 6], [1 5]);

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


        imshow([Dice{reference}]);
        
        fprintf('Time to select your catagory!')
    else
        fprintf('Time to select your catagory!')
    end
else
    fprintf('Time to select your catagory!')
end

    
