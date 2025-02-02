 	numint4.m                                                      TEXTOMEG           �    ��:���:�   mBIN                ��cR  %  numint4.m
% Matlab file for Part 4 of Numeric Calculation of 
% Integrals module

disp('**********************************************')
disp('Part 3: Accuracy and Simpson''s Rule ')
disp('**********************************************')
disp('  ')    

    format long
    
    disp('--------------------------------------------')
    disp('Step 1: ')
    disp('Using MATLAB comments in your diary file,')
    disp('describe your calculation using the FTC. ')
    disp(' ')
    disp('To continue, type the word return and ')
    disp('hit enter!')
    disp(' ')
    
    keyboard;
    disp(' ')
    
    disp('------------------------------------------------')
    disp('Step 2: ')
    disp('Use the applets for calculation and fill in')
    disp('the following table.  (Use n=40 subintervals')
    disp('for each method.) ')
    disp(' ')
    disp(' Method   Approx   Exact Integal   Error ')
    disp('  LHS     10.8529    11.1111     -0.2582 ')
    disp('  RHS     11.3737    11.1111      0.2626 ')
    disp('  TRAP    _______    11.1111      ______ ')
    disp('  MID     _______    11.1111      ______ ')
    disp(' ')
    disp('To continue, type the word return and ')
    disp('hit enter!')
    disp(' ')

    keyboard;
    disp(' ')

    disp('--------------------------------------------')
    disp('Step 3: ')
    disp('Using MATLAB comments in your diary file,')
    disp('give your rank ordering of the four methods')
    disp('according to accuracy.')
    disp(' ')
    disp('To continue, type the word return and ')
    disp('hit enter!')
    disp(' ')
    
    keyboard;
    disp(' ')
    
    disp('------------------------------------------------')
    disp('Step 4: ')
    disp('Use your results for approximations of the')
    disp('integral of f(x)=1/x over the interval [1,3] ')
    disp('from the tables you filled out in Parts 1  ')
    disp('through 3 to fill in the following table')
    disp('(Use n=40 subintervals for each method and')
    disp('provide 10 decimal places of accuracy.) ')
    disp(' ')
    disp(' Method  Approx     Exact Integal     Error ')
    disp(' LHS   1.1154640890  1.0986122887  0.0168518003 ')
    disp(' RHS   1.0821307560  1.0986122887 -0.0164815327 ')
    disp(' TRAP  ____________  1.0986122887 _____________ ')
    disp(' MID   ____________  1.0986122887 _____________ ')
    disp(' ')
    disp('To continue, type the word return and ')
    disp('hit enter!')
    disp(' ')

    keyboard;
    disp(' ')

    disp('--------------------------------------------')
    disp('Step 4 (cont.): ')
    disp('Using MATLAB comments in your diary file,')
    disp('give your rank ordering of the four methods')
    disp('as used in Step 4 according to accuracy.')
    disp(' ')
    disp('To continue, type the word return and ')
    disp('hit enter!')
    disp(' ')
    
    keyboard;
    disp(' ')
    
    disp('--------------------------------------------')
    disp('Step 5: ')
    disp('Using MATLAB comments in your diary file,')
    disp('describe the results of your calculation')
    disp('averaging the LHS and RHS errors. ')
    disp(' ')
    disp('To continue, type the word return and ')
    disp('hit enter!')
    disp(' ')
    
    keyboard;
    disp(' ')
    

    disp('--------------------------------------------')
    disp('Step 6: ')
    disp('Below, do the Simpson''s Rule approximation')
    disp('calculations for both the integral of ')
    disp('f(x) = (x^2 + 5)/6 over [0,5] and ')
    disp('f(x) = 1/x over [1,3] by using the results ')
    disp('in the two tables you filled in in this Part. ')
    disp(' ')
    disp('The weighted average calculation is easy if ')
    disp('you fill in the question marks below and enter: ')
    disp(' ')
    disp('  TRAP = ? ')
    disp('  MID = ? ')
    disp('  SIMP = (2*MID + TRAP)/3 ')
    disp(' ')
    disp('To continue, type the word return and ')
    disp('hit enter!')
    disp(' ')
    
    keyboard;
    disp(' ')
    
    disp('------------------------------------------------')
    disp('Step 7: ')
    disp('By using the weighted averages of your results ')
    disp('for TRAP from Part 2 and for MID from Part 3, ')
    disp('fill in the table below for Simpson''s Rule ')
    disp('approximations to the integral of f(x) = 1/x ')
    disp('over the interval [1,3]. ')
    disp(' ')
    disp('For example the calculation for n = 5 is ')
    disp('  SIMP = (2*1.0928571429 + 1.1102675103)/3. ')
    disp(' ')
    disp(' ')
    disp('  Subintervals n     SIMP Approx to 1/x integral ')
    disp('         5                 1.0986605987')
    disp('        10                 ____________')
    disp('        20                 ____________')
    disp('        40                 ____________')
    disp(' ')
    disp(' ')
    disp('-------------------------------------------- ')
    disp('When you are ready to go on to part 5 ')
    disp('of this module, type: numint5.')
    disp(' ')
                                                   