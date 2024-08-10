CREATE OR REPLACE PROCEDURE p_ESTADO_ESTUDIANTE (p_codCurso NUMBER) IS
   CURSOR cursor_estudiante_actual IS
      SELECT E.CARNET, E.NOMBRES, E.APELLIDOS, GANO.CURSOS_GANADOS, PERDIO.CURSOS_PERDIDOS
    FROM ESTUDIANTE E
	left join (SELECT COD_CURSO, COUNT(*) AS CURSOS_GANADOS 
		       FROM ASIGNACION WHERE GANARON.NOTA>=61) AS GANO on GANO.CARNET=E.CARNET 
	left join (SELECT COD_CURSO, COUNT(*) AS CURSOS_PERDIDOS
		       FROM ASIGNACION WHERE GANARON.NOTA<61) AS PERDIO on PERDIO.CARNET=E.CARNET 		  
	;
BEGIN

   FOR registro_estudiante_actual IN cursor_estudiante_actual LOOP

      DBMS_OUTPUT.PUT_LINE('Loop number = ' || counter || 
         '; Wages = '|| TO_CHAR(total_wages));  /* Debug line */
      counter := counter + 1; /* Increment debug counter */
	  
		dbms_output.put_line( 'Carnet: ' || registro_estudiante_actual.CARNET || 
								', Nombres: ' ||  registro_estudiante_actual.NOMBRES || 
								', Apellidos: ' ||  registro_estudiante_actual.APELLIDOS || 
								', Cursos ganados: ' ||  registro_estudiante_actual.CURSOS_GANADOS || 
								', Cursos perdidos: ' || registro_estudiante_actual.CURSOS_PERDIDOS);	  
	  
   END LOOP;

END p_ESTADO_ESTUDIANTE;


