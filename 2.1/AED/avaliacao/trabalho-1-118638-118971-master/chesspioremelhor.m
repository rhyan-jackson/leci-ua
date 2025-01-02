m_values = [8, 16, 32];
n_values = [16, 32, 64]; 

figure;
hold on;
for m = m_values
    best_case = m; 
    plot(n_values, best_case * ones(size(n_values)), '-o', 'DisplayName', sprintf('Melhor caso (m = %d)', m));
end
title('Melhor Caso (s = n)', 'FontSize', 14);
xlabel('Número de colunas (n)', 'FontSize', 12);
ylabel('Número total de runs', 'FontSize', 12);
legend('Location', 'northwest');
grid on;
saveas(gcf, 'Grafico_Melhor_Caso.png');

figure;
hold on;
for m = m_values
    worst_case = m .* n_values;
    plot(n_values, worst_case, '-x', 'DisplayName', sprintf('Pior caso (m = %d)', m));
end
title('Pior Caso (s = 1)', 'FontSize', 14);
xlabel('Número de colunas (n)', 'FontSize', 12);
ylabel('Número total de runs', 'FontSize', 12);
legend('Location', 'northwest');
grid on;
saveas(gcf, 'Grafico_Pior_Caso.png');
