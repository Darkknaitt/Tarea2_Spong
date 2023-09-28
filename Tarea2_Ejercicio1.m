% Tarea 2
% Ejercicio 2.17 
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

% Dibujo para simular los elementos de la Figura 2.17
line([0 10],[0,0],[0 0],'color','y', "linewidth", 1.5) 
line([10 10],[0,0],[0 10],'color','y', "linewidth", 1.5) 
line([10 10],[0,10],[0 0],'color','y', "linewidth", 1.5)
line([10 10],[0,10],[10 0],'color','y', "linewidth", 1.5) 
line([0 10],[0,0],[10 10],'color','y', "linewidth", 1.5)
line([0 10],[10,10],[0 0],'color','y', "linewidth", 1.5)
line([0 0],[0,10],[10 0],'color','black', "linewidth", 1.5)
line([0 0],[0,10],[0 0],'color','black', "linewidth", 1.5)
line([0 0],[0,0],[0 10],'color','black', "linewidth", 1.5)


% Lineas para referencia del marco {0}
line([0 10],[0,0],[0 0],'color','r') 
line([0 0],[0,10],[0 0],'color','g') 
line([0 0],[0,0],[0 10],'color','b')
view(120,30)



%Representaciión del marco H^1_0
H_0_0 = Rot_Y(90)
R1_1 = Rot_X(90)
H_0_1 = H_0_0 * Rot_X(90)
Pt_0 = [1 0 0 -1;
      0 1 0 0 ;
      0 0 1 0 ;
      0 0 0 1] 
H_0_2 = H_0_1 * Pt_0
ejesmoviles(H_0_2)
ejesmoviles(Tid) 


%Representaciión del marco H^2_0
H_2_0 = [1 0 0 0;
        0 1 0 1 ;
        0 0 1 0 ;
        0 0 0 1] 
Rot111 = Rot_X(90)
Rot222 = Rot_Z(90)
H_2_1 = H_2_0 * Rot_X(90)
H_3_1 = H_2_1 * Rot_Y(-90)
ejesmoviles(H_3_1)

% Matriz H12
H1 = [1 0 0 1;
     0 1 0 0;
     0 0 1 0;
     0 0 0 1]
 
H2 = [1 0 0 0;
     0 1 0 0;
     0 0 1 -1;
     0 0 0 1]

HV = H1*H2 *Rot_X(90) * Rot_Z(90)

HVG = H_0_2*HV


