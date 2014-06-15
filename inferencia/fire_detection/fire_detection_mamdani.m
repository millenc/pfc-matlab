function B = fire_detection_mamdani(temp, smoke, light, humidity, distance)
    addpath('./lang_variables');
    addpath('../functions');
    addpath('../matlab2tikz');

    x_threat = threat.get_x();

    % Reglas
    R = fire_detection_rules();

    % Premisa
    fact = [temp,smoke,light,humidity,distance];

    %Universo de salida
    y.v(1,:) = x_threat;

    % Aplicar método de Mamdani
    B = mamdani(R, fact, y);

    %Defusificar
    dc = round(defuzz(x_threat, B, 'centroid'));
    db = round(defuzz(x_threat, B, 'bisector'));
    dm = round(defuzz(x_threat, B, 'mom'));
    ds = round(defuzz(x_threat, B, 'som'));
    dl = round(defuzz(x_threat, B, 'lom'));


    % Pintar gráfico
    alw = 0.75;    % AxesLineWidth
    fsz = 9;      % Fontsize
    lw = 1.2;      % LineWidth
    msz = 9;       % MarkerSize

    figure;
    set(gca, 'FontSize', fsz, 'LineWidth', alw);
    hold on;
    hl = plot(y.v(1,:),B,'-k','LineWidth',lw,'MarkerSize',msz);
    hdc = plot(dc,B(dc+1),'*b','LineWidth',lw,'MarkerSize',msz);
    hdb = plot(db,B(db+1),'+g','LineWidth',lw,'MarkerSize',msz);
    hdm = plot(dm,B(dm+1),'sr','LineWidth',lw,'MarkerSize',msz);
    hds = plot(ds,B(ds+1),'vc','LineWidth',lw,'MarkerSize',msz);
    hdl = plot(dl,B(dl+1),'^m','LineWidth',lw,'MarkerSize',msz);
    hasbehavior(hl,'legend',false);
    xlabel('Riesgo (%)');
    %title(strcat('Temp: ',sprintf('%d',temp),', Humo: ',sprintf('%d',smoke),', Luz: ',sprintf('%d',light),', Humedad: ',sprintf('%d',humidity),', Distancia: ',sprintf('%d',distance)));
    %legend(strcat('centroid: ',sprintf('%d',dc)),strcat('bisector: ',sprintf('%d',db)),strcat('mom: ',sprintf('%d',dm)),strcat('som: ',sprintf('%d',ds)),strcat('lom: ',sprintf('%d',dl)));
    matlab2tikz(strcat('./output/mamdani-','T',sprintf('%d',temp),'_S',sprintf('%d',smoke),'_L',sprintf('%d',light),'_H',sprintf('%d',humidity),'_D',sprintf('%d',distance),'.tikz'),'showInfo', false,'standalone', false,'height', '\figureheight', 'width', '\figurewidth');
end

