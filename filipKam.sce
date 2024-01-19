zad 1
///a
asin(0.01) + acos(0.01) + atan(0.01) + atan(1/0.01)
///b
a= [1,-2,3,2;2,3,6,6;1,-2,-4,8;8,3,-1,0]
a'
b = [2,6,-2,0;1,4,0,7;1,-2,4,8;8,-1,2,5]
a'*b
///c
v = (sqrt(3)/12) * 28^2 * 15
d///
function result = calculate_sum()
    
    total_sum = 0;

    
    for k = -2:25
        
        term = (k^2 + 45) / 4^k;
        total_sum = total_sum + term;
    end

    
    result = 33 * total_sum;
end


result_for_u_25 = calculate_sum();


disp(result_for_u_25);
\\\zad2
function y = f1(x)
    y = 3^(x + 4) + 4 * x;
endfunction

function y = f2(x)
    y = (x^3 + 4 * x) / (x^2 + 5) + 5;
endfunction


x = linspace(-10, 10, 100);

y1 = f1(x);
y2 = f2(x);


plot(x, y1, '-b', x, y2, '-r');
title('Wykres dwóch funkcji');
xlabel('x');
ylabel('y');
legend('f = 3^{(x+4)} + 4x', 'f = (x^3 + 4x)/(x^2 + 5) + 5');
grid on;
\\\zad3
years = [2010, 2012, 2014, 2016, 2018];
RMF_data = [33, 23, 43, 23, 44];
Zet_data = [27, 12, 62, 12, 75];


bar(years, [RMF_data', Zet_data'], 'grouped');
title('Wykres słupkowy pogrupowany');
xlabel('Rok');
ylabel('Wartość');
legend('RMF', 'Zet');


for i = 1:length(years)
    text(years(i)-0.1, RMF_data(i)+1, num2str(RMF_data(i)), 'Color', 'b');
    text(years(i)+0.1, Zet_data(i)+1, num2str(Zet_data(i)), 'Color', 'r');
end
