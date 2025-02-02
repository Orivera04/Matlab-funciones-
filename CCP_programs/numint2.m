 	numint2.m                                                      TEXTOMEG               ��:���:�   mBIN                ����  %  numint2.m
% Matlab file for Part 2 of Numeric Calculation of 
% Integrals module

disp('**********************************************')
disp('Part 2: Trapezoidal Sums ')
disp('**********************************************')
disp('  ')    

    format long
    
    disp('--------------------------------------------')
    disp('Steps 1 and 2: ')
    disp('Answer the questions by using MATLAB comments ')
    disp('in your diary file. ')
    disp(' ')
    disp('To continue, type the word return and ')
    disp('hit enter!')
    disp(' ')
    
    keyboard;
    disp(' ')
    
    disp('---------------------------------------------')
    disp('Enter the integrand function to use in ')
    disp('steps 3 and 4: ')
    disp(' ')
    disp('  f = fcnchk(''(x^2+5)/6'', ''vectorized'' )  ')
    disp(' ')
    disp(' ')
    disp('To continue, type the word return and ')
    disp('hit enter!')
    disp(' ')
    
    keyboard;
    disp(' ')
    
    disp('--------------------------------------------')
    disp('Step 3: ') 
    disp('Do the trapezoidal sum calulation for n=5') 
    disp('trapezoids. ')
    disp('Does your sum match the applet? ')
    disp('Answer using MATLAB comments in your diary file.')
    disp(' ')
    disp('To continue, type the word return and ')
    disp('hit enter!')
    disp(' ')
    
    keyboard;
    disp(' ')
    
    disp('--------------------------------------------')
    disp('Step 4: ') 
    disp('Answer the questions using MATLAB comments')
    disp('in your diary file.')
    disp(' ')
    disp('To continue, type the word return and ')
    disp('hit enter!')
    disp(' ')
    
    keyboard;
    disp(' ')
    
    disp('---------------------------------------------')
    disp('Step 5: ')
    disp('Below, find the commands that calculate a ')
    disp('trapezoidal sum. By changing the value of n and')
    disp('re-entering the commands, you can calculate the')
    disp('sum for the number of subintervals you desire.')
    disp('You can enter a new function f(x) and new ')
    disp('endpoints a and b to calculate an approximation')
    disp('to any integral. ')
    disp(' ')
    disp('Enter: ')
    disp(' ')
    disp('  clear f x a b n xpt; ')
    disp('  f = fcnchk(''(x^2+5)/6'', ''vectorized'' )  ')
    disp('  n = 40 ')
    disp('  a = 0, b = 5 ')
    disp('  delx = (b-a)/n; ')
    disp('  xpt = a: delx: b; ')
    disp('  height = f(xpt); ')
    disp('  lfheight = height(1:n); ')
    disp('  rtheight = height(2:n+1); ')
    disp('  areas = 0.5*(lfheight+rtheight)*delx; ')
    disp('  TRAP = sum(areas) ')
    disp(' ')
    disp('------------------------------------------------')
    disp('Discuss how your results compare with those of')
    disp('the applet by using MATLAB comments in your ')
    disp('diary file.')
    disp(' ')
    disp('To continue, type the word return and ')
    disp('hit enter!')
    disp(' ')
    
    keyboard;
    disp(' ')
    
    disp('------------------------------------------------')
    disp('Step 6: ')
    disp('Change the function to f(x)=1/x and the interval')
    disp('to 1 < x < 3 in the TRAP commands above and do ')
    disp('the calculations to fill in the table below. ')
    disp(' ')
    disp('  Subintervals n     TRAP Approx to 1/x integral ')
    disp('         5                 1.1102675103')
    disp('        10                 ____________')
    disp('        20                 ____________')
    disp('        40                 ____________')
    disp(' ')
    disp('To continue, type the word return and ')
    disp('hit enter!')
    disp(' ')

    keyboard;
    disp(' ')
    
    disp('--------------------------------------------')
    disp('Steps 7 and 8: ') 
    disp('Answer the questions using MATLAB comments')
    disp('in your diary file.')
    disp(' ')
    disp(' ')
    disp('-------------------------------------------- ')
    disp('When you are ready to go on to part 3 ')
    disp('of this module, type: numint3.')
    disp(' ')
                                                                                                                         