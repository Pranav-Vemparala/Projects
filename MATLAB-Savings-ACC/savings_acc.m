% This script file was made by Pranav Vemparala on 05/16/2022.
% This calculates the amount in a savings account for each month for the next 18 years.
% Then, it plots the amount in the savings account as a function of time in years.
% It then determines the cost for a 4-year education for a child who is entering college in 18 years based
on increase in percentage. Then, it compares the savings vs the cost of college and says if we are saving
enough.
% Part A
balance(1) = 1000; % This is the starting balance
years = 18; % This is the number of years
monthly_savings = 100; % This is the amount of monthly savings
months = 18*12; % This is the amount of months in 18 years
for k=2:months
balance(k) = balance(k-1) + balance(k-1)*0.005 + monthly_savings;
end
time = 1:months; % This is the index of the time
time = time/12; % This is the years
plot(balance,time), xlabel(‘TIme in years’), ylabel(‘Amount in savings account’),
text(time(length(balance)), balance(length(balance))) % This is to plot it, add labels on axes, and then
add text on the plot
% Part B
increase = [10,8,10,16,15,4,6,7,8,10,8,12,14,15,8,7,6,5,7,8,9,8] % This is the array of percentages
college_cost(1)=5000; % This is the original cost for college
for k=2:22
college_cost(k) = college_cost(k-1)+college_cost(k-1)*increase(k)/100;
end
total_cost = sum(college_cost(19:22)) % This is so that it is only 18 years from now
if balance(months)>total_cost % This is to see if the balance is bigger than the cost of college to check if
the saving is enough or not
disp(‘You are saving enough’)
else
disp(‘You are not saving enough. Save more. ‘)
end
% total_cost = 10,9742.36; ‘You are not saving enough. Save more.’
