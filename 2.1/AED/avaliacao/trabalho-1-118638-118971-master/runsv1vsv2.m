% Dados testes
tamanhos_imagem = {'8x8', '16x12', '90x75', '200x400', '1000x1000'};
runs_antiga = [64, 192, 6750, 80000, 1000000];
runs_nova = [64, 192, 3525, 60576, 301500];

x = 1:length(tamanhos_imagem);

figure;
hold on;
plot(x, runs_antiga, 'o--', 'DisplayName', 'Versão Antiga (Runs)');
plot(x, runs_nova, 'o-', 'DisplayName', 'Versão Nova (Runs)');

xlabel('Tamanho da Imagem (m x n)');
ylabel('Runs');
title('Comparação de Runs - Versão antiga vs Versão otimizada');
xticks(x);
xticklabels(tamanhos_imagem);
ylim([0 150000]);
legend('show');
grid on;

hold off;
