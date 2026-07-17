Algoritmo agenda_de_horarios
	Definir opcion, totalHorarios Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir encontrado Como Logico
	Dimension id[100]
	Dimension actividad[100]
	Dimension dia[100]
	Dimension horaInicio[100]
	Dimension horaFin[100]
	Dimension lugar[100]
	Dimension responsable[100]
	totalHorarios <- 0
	//---------------------------------------//
	//--|menu_principal_agenda_de_horarios|--//
	//---------------------------------------//	
	Repetir
		Escribir "menu principal agenda de horarios"
		Escribir "1) registrar horario"
		Escribir "2) editar horario"
		Escribir "3) eliminar horario"
		Escribir "4) buscar horario"
		Escribir "5) listar horarios"
		Escribir "6) ver detalles del horario"
		Escribir "7) salir"
		Escribir "seleccione una opción:"
		Leer opcion
		Segun opcion Hacer
			//-----------------------//
			//--|registrar_horario|--//
			//-----------------------//
			1:
				Escribir "registrar horario"
				Escribir "ingrese el id:"
				Leer id[totalHorarios + 1]
				Escribir "ingrese la actividad:"
				Leer actividad[totalHorarios + 1]
				Escribir "ingrese el día:"
				Leer dia[totalHorarios + 1]
				Escribir "ingrese la hora de inicio:"
				Leer horaInicio[totalHorarios + 1]
				Escribir "ingrese la hora de finalización:"
				Leer horaFin[totalHorarios + 1]
				Escribir "ingrese el lugar:"
				Leer lugar[totalHorarios + 1]
				Escribir "ingrese el responsable:"
				Leer responsable[totalHorarios + 1]
				totalHorarios <- totalHorarios + 1
				Escribir "horario registrado correctamente."
			//--------------------//
			//--|editar_horario|--//
			//--------------------//
			2:
				Escribir "editar horario"
				Si totalHorarios = 0 Entonces
					Escribir "no hay horarios registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalHorarios Hacer
						Escribir id[i], " | ", actividad[i], " | ", dia[i], " | ", horaInicio[i], " | ", horaFin[i], " | ", lugar[i], " | ", responsable[i]
					FinPara
					Escribir "ingrese el id del horario que desea editar:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalHorarios Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese la nueva actividad:"
							Leer actividad[i]
							Escribir "ingrese el nuevo día:"
							Leer dia[i]
							Escribir "ingrese la nueva hora de inicio:"
							Leer horaInicio[i]
							Escribir "ingrese la nueva hora de finalización:"
							Leer horaFin[i]
							Escribir "ingrese el nuevo lugar:"
							Leer lugar[i]
							Escribir "ingrese el nuevo responsable:"
							Leer responsable[i]
							Escribir "horario editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un horario con ese id."
					FinSi					
				FinSi
			//----------------------//
			//--|eliminar_horario|--//
			//----------------------//
			3:
				Escribir "eliminar horario"
				Si totalHorarios = 0 Entonces
					Escribir "no hay horarios registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalHorarios Hacer
						Escribir id[i], " | ", actividad[i], " | ", dia[i], " | ", horaInicio[i], " | ", horaFin[i], " | ", lugar[i], " | ", responsable[i]
					FinPara
					Escribir "ingrese el id del horario que desea eliminar:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalHorarios Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Para j <- i Hasta totalHorarios - 1 Hacer
								id[j] <- id[j + 1]
								actividad[j] <- actividad[j + 1]
								dia[j] <- dia[j + 1]
								horaInicio[j] <- horaInicio[j + 1]
								horaFin[j] <- horaFin[j + 1]
								lugar[j] <- lugar[j + 1]
								responsable[j] <- responsable[j + 1]
							FinPara
							totalHorarios <- totalHorarios - 1
							Escribir "horario eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un horario con ese ID."
					FinSi					
				FinSi
			//--------------------//
			//--|buscar_horario|--//
			//--------------------//
			4:
				Escribir "buscar horario"
				Escribir "ingrese el id del horario:"
				Leer idBuscar
				Escribir "función de búsqueda disponible."
			//---------------------//
			//--|listar_horarios|--//
			//---------------------//
			5:
				Escribir "listar horarios"
				Si totalHorarios = 0 Entonces
					Escribir "no hay horarios registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalHorarios Hacer
						Escribir id[i], " | ", actividad[i], " | ", dia[i], " | ", horaInicio[i], " | ", horaFin[i], " | ", lugar[i], " | ", responsable[i]
					FinPara
				FinSi
			//--------------------------//
			//--|detalles_del_horario|--//
			//--------------------------//
			6:
				Escribir "detalles del horario"
				Escribir "ingrese el id del horario:"
				Leer idBuscar
				Escribir "función para mostrar detalles disponible."
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//				
			7:
				Escribir "gracias por utilizar la Agenda de Horarios."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo