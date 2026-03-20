clear; clc;

Xs = 0:0.01:1;

G_oppo_BDFIS = (1+Xs+2*sqrt(Xs)).^2./(4*Xs);
G_oppo_DFIS = 4 * ones(size(Xs));
G_oppo_BDRIS = (1+Xs).^2./(4*Xs);

figure('defaultaxesfontsize',12);
LineW = 1.8; MarkS = 8;
plot(Xs,G_oppo_BDFIS,'--p','MarkerIndices',1:20:length(Xs),'linewidth',LineW,'MarkerSize',MarkS,'DisplayName','BD-FIS')
hold on;
plot(Xs,G_oppo_DFIS,'-o','MarkerIndices',1:20:length(Xs),'linewidth',LineW,'MarkerSize',MarkS,'DisplayName','D-FIS')
plot(Xs,G_oppo_BDRIS,'--d','MarkerIndices',1:20:length(Xs),'linewidth',LineW,'MarkerSize',MarkS,'DisplayName','BD-RIS')
grid on;
set(gca,'GridLineStyle',':','GridAlpha',0.8,'LineWidth',1.5);
xlabel('$$\chi$$','Interpreter','latex');
ylabel('Gain over D-RIS')
legend('location','northeast','NumColumns',1,'FontSize',12);
ax = gca;
ax.XTick = 0:0.2:1;
ax.XLim = [0 1];
ax.YLim = [1 9];
set(gcf, 'Color', [1,1,1]);
set(gca, 'LineWidth',1.5);