m_values = [8, 16, 32]; 
n = 16;
s_values = 1:n;

figure;
hold on;

for m = m_values
    memory = zeros(1, length(s_values)); 
    for i = 1:length(s_values)
        s = s_values(i);
        memory(i) = m * (ceil(n / s) + 2)*4; 
    end
    
    plot(s_values, memory, '--x', 'DisplayName', sprintf('Memória (m = %d linhas)', m));
end

title('Número Total de Runs e Memória Ocupada em Função de s');
xlabel('Tamanho do lado do quadrado (s)');
ylabel('Valores Calculados');
legend show;
grid on;
saveas(gcf, 'Numero_Total_de_Runs_Memoria.png');
