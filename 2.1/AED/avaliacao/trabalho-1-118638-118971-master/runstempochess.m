
m_values = [8, 16, 32]; 
n = 16; 
s_values = 1:n; 

figure;
hold on;


for m = m_values
    runs = zeros(1, length(s_values)); 
    for i = 1:length(s_values)
        s = s_values(i);
        runs(i) = m * ceil(n / s);
    end
    plot(s_values, runs, 'DisplayName', sprintf('m = %d linhas', m)); 
end

title('Número Total de Runs em Função do Tamanho do Quadrado (s)');
xlabel('Tamanho do lado do quadrado (s)');
ylabel('Número total de runs');
legend show;
grid on;

saveas(gcf, 'Numero_Total_de_Runs.png');
