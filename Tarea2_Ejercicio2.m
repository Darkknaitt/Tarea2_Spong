% Tarea 2
% Ejercicio 2.18 
% Robot Dynamics and Control
% Mark Spong 1989
% Pablo Sotelo Abraham de Jesús
% Boleta: B230996
% Metodos Algebraicos para Robots

clc         %Limpiar pantalla
clear all   %Limpiar las variables
close       %Cerrar gráficas que existen
Tid=[1 0 0 0;
     0 1 0 0;
     0 0 1 0;
     0 0 0 1]; % Matriz identidad
Tid_1 = [1 0 0 0 ;
         0 1 0 0 ;
         0 0 1 0 ;
         0 0 0 1 ]; % Matriz identidad para dibujo de marco inicial

% Lineas auxiliares para los elementos de la Figura 2.18
line([0 0],[0,20],[0 0],'color','y', "linewidth", 0.5) 
line([0 -10],[20,20],[0 0],'color','y', "linewidth", 0.5)
line([-10 -10],[20,10],[0 0],'color','y', "linewidth", 0.5)
line([-10 0],[10,10],[0 0],'color','y', "linewidth", 0.5)

% Dibujo de mesa
line([0 0],[20,20],[0 10],'color','black', "linewidth", 1.5)
line([-10 -10],[20,20],[0 10],'color','black', "linewidth", 1.5)
line([-10 -10],[10,20],[10 10],'color','black', "linewidth", 1.5)
line([-10 0],[20,20],[10 10],'color','black', "linewidth", 1.5)
line([-10 0],[10,10],[10 10],'color','black', "linewidth", 1.5)
line([0 0],[10,20],[10 10],'color','black', "linewidth", 1.5)
line([-10 -10],[10,10],[0 10],'color','black', "linewidth", 1.5)
line([0 0],[10,10],[0 10],'color','black', "linewidth", 1.5)

% Dibujo de Cubo
% line([-4 -4],[14,16],[10 10],'color','cyan', "linewidth", 1.5)
% line([-4 -6],[14,14],[10 10],'color','cyan', "linewidth", 1.5)
% line([-6 -4],[14,14],[10 10],'color','cyan', "linewidth", 1.5)
% line([-4 -4],[14,14],[10 12],'color','cyan', "linewidth", 1.5)
% line([-4 -4],[14,16],[12 12],'color','cyan', "linewidth", 1.5)
% line([-6 -6],[14,14],[10 12],'color','cyan', "linewidth", 1.5)
% line([-6 -6],[16,16],[10 12],'color','cyan', "linewidth", 1.5)
% line([-4 -4],[16,16],[10 12],'color','cyan', "linewidth", 1.5)
% line([-4 -6],[16,16],[10 10],'color','cyan', "linewidth", 1.5)
% line([-6 -6],[14,16],[10 10],'color','cyan', "linewidth", 1.5)
% line([-4 -6],[16,16],[12 12],'color','cyan', "linewidth", 1.5)
% line([-6 -6],[14,16],[12 12],'color','cyan', "linewidth", 1.5)
% line([-4 -6],[14,14],[12 12],'color','cyan', "linewidth", 1.5)


% Dibujo de- Cubo EJ20
line([1 1],[17,19],[10 10],'color','cyan', "linewidth", 1.5)
line([1 -1],[17,17],[10 10],'color','cyan', "linewidth", 1.5)
line([-1 1],[17,17],[10 10],'color','cyan', "linewidth", 1.5)
line([1 1],[17,17],[10 12],'color','cyan', "linewidth", 1.5)
line([1 1],[17,19],[12 12],'color','cyan', "linewidth", 1.5)
line([-1 -1],[17,17],[10 12],'color','cyan', "linewidth", 1.5)
line([-1 -1],[19,19],[10 12],'color','cyan', "linewidth", 1.5)
line([1 1],[19,19],[10 12],'color','cyan', "linewidth", 1.5)
line([1 -1],[19,19],[10 10],'color','cyan', "linewidth", 1.5)
line([-1 -1],[17,19],[10 10],'color','cyan', "linewidth", 1.5)
line([1 -1],[19,19],[12 12],'color','cyan', "linewidth", 1.5)
line([-1 -1],[17,19],[12 12],'color','cyan', "linewidth", 1.5)
line([1 -1],[17,17],[12 12],'color','cyan', "linewidth", 1.5)



% Dibujo de cámara
line([-4.5 -4.5],[14.5,15.5],[30 30],'color','black', "linewidth", 1.5)
line([-4.5 -5.5],[14.5,14.5],[30 30],'color','black', "linewidth", 1.5)
line([-5.5 -4.5],[14.5,14.5],[30 30],'color','black', "linewidth", 1.5)
line([-4.5 -4.5],[14.5,14.5],[30 32.5],'color','black', "linewidth", 1.5)
line([-4.5 -4.5],[14.5,15.5],[32.5 32.5],'color','black', "linewidth", 1.5)
line([-5.5 -5.5],[14.5,14.5],[30 32.5],'color','black', "linewidth", 1.5)
line([-5.5 -5.5],[15.5,15.5],[30 32.5],'color','black', "linewidth", 1.5)
line([-4.5 -4.5],[15.5,15.5],[30 32.5],'color','black', "linewidth", 1.5)
line([-4.5 -5.5],[15.5,15.5],[30 30],'color','black', "linewidth", 1.5)
line([-5.5 -5.5],[14.5,15.5],[30 30],'color','black', "linewidth", 1.5)
line([-4.5 -5.5],[15.5,15.5],[32.5 32.5],'color','black', "linewidth", 1.5)
line([-5.5 -5.5],[14.5,15.5],[32.5 32.5],'color','black', "linewidth", 1.5)
line([-4.5 -5.5],[14.5,14.5],[32.5 32.5],'color','black', "linewidth", 1.5)

% Matriz H01 para marco de mesa
T1 = [1 0 0 0;
      0 1 0 10;
      0 0 1 10;
      0 0 0 1]
ejesmoviles(T1)

% Matriz H02 para marco de Cubo
% T2 = [1 0 0 -5;
%       0 1 0 15;
%       0 0 1 11;
%       0 0 0 1]
%  ejesmoviles(T2)
 
% Matriz H02 para marco de Cubo EJ20
T2 = [1 0 0 0;
      0 1 0 18;
      0 0 1 11;
      0 0 0 1]
 T2 = T2 * Rot_Z(90)
 ejesmoviles(T2)

% Matriz H03 para marco de Cámara EJ18
% T3 = [1 0 0 -5;
%       0 1 0 15;
%       0 0 1 30;
%       0 0 0 1]
% T3 = T3*Rot_Y(180)*Rot_Z(90)
% ejesmoviles(T3)

% Matriz H03 para marco de Cámara EJ19
T3 = [1 0 0 -5;
      0 1 0 15;
      0 0 1 30;
      0 0 0 1]
T3 = T3*Rot_Y(180)*Rot_Z(180)
ejesmoviles(T3)



% Lineas para referencia del marco {0}
line([0 10],[0,0],[0 0],'color','r') 
line([0 0],[0,20],[0 0],'color','g') 
line([0 0],[0,0],[0 20],'color','b')

ejesmoviles(Tid_1)
view(120,30)

% Calculando H2_3
% T4 = [1 0 0 0;
%       0 1 0 0;
%       0 0 1 1.9;
%       0 0 0 1]
% T4 = T4*Rot_Y(180)*Rot_Z(90)

% Calculando H2_3 EJ19
T4 = [1 0 0 0;
      0 1 0 0;
      0 0 1 1.9;
      0 0 0 1]
T4 = T4*Rot_Y(180)*Rot_Z(180)
A4 = Rot_Z(180)
% Matriz de transformación homogénea del bloque a la cámara
A1 = [1 0 0 -0.3;
      0 1 0 0.5;
      0 0 1 1.9;
      0 0 0 1]
A1 = A1 * Rot_X(180)

% Matriz de transformación homogénea del bloque a la base del robot
A2 = [1 0 0 -1.8;
      0 1 0 0;
      0 0 1 -1.1;
      0 0 0 1]
A2 = A2 * Rot_Z(-90)



