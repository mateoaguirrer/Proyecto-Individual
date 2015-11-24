T1 = [1,28];
T2 = [7,18];
T3 = [8,16];
T4 = [17,2];
T5 = [22,10];
T6 = [27,8];
[X,Y] = meshgrid(0:1:30,0:1:30);
for filas = 1:length(X)
for columnas = 1:length(Y)
    C1 = 0.5*3*sqrt(((X(filas,columnas)-T1(1,1)).^2)+((Y(filas,columnas)-T1(1,2))).^2);
    C2 = 0.5*7*sqrt(((X(filas,columnas)-T2(1,1)).^2)+((Y(filas,columnas)-T2(1,2))).^2);
    C3 = 0.5*4*sqrt(((X(filas,columnas)-T3(1,1)).^2)+((Y(filas,columnas)-T3(1,2))).^2);
    C4 = 0.5*5*sqrt(((X(filas,columnas)-T4(1,1)).^2)+((Y(filas,columnas)-T4(1,2))).^2);
    C5 = 0.5*2*sqrt(((X(filas,columnas)-T5(1,1)).^2)+((Y(filas,columnas)-T5(1,2))).^2);
    C6 = 0.5*6*sqrt(((X(filas,columnas)-T6(1,1)).^2)+((Y(filas,columnas)-T6(1,2))).^2);  
D(filas,columnas)=sum([C1 C2 C3 C4 C5 C6]);
end
end

mesh(X,Y,D)
xlabel('Distancia al este')
ylabel('Distancia al norte')
zlabel('Costo semanal')
title('Grafica de costos')
[G, N] = min(D);
[F, M] = min(G);
hold on
plot3(X(N(M),M),Y(N(M),M),D(N(M),M),'or','linewidth',4)
line([X(N(M),M) X(N(M),M)], [Y(N(M),M) Y(N(M),M)],[D(N(M),M) 0])
plot3(X(N(M),M),Y(N(M),M),0,'+r','linewidth',2)
L = X(N(M),M);
K = Y(N(M),M);
fprintf('Nombre: Mateo Aguirre Rivera\n Clase:Programación\n Actividad:Proyecto individual\n')
fprintf('\n\n Despues de realizar una detallada busqueda, se encontró donde debe estar el centro de distribucion para que se optimizen\n los costos\n\n')
fprintf('El centro de distribución debe estar localizado %d millas al este y %d millas al norte\n',L,K)
