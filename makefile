
NOMBRE_EJECUTABLE1 = lab3_secuencial
NOMBRE_EJECUTABLE2 = lab3_random
# Esta es la target que se ejecuta por defecto si se escribe "make" en la consola
all: release

# Compilación principal del ejecutable
release:
	@echo 'Compilando target: $@'
	
	gcc lab3_SECUENCIAL.c -o $(NOMBRE_EJECUTABLE1)
	gcc lab3_RANDOM.c -o $(NOMBRE_EJECUTABLE2) 
	@echo ' '
	@echo $@ compilado
	@echo "Ejecute el programa 1 haciendo: ./"$(NOMBRE_EJECUTABLE1)""
	@echo "Ejecute el programa 2 haciendo: ./"$(NOMBRE_EJECUTABLE2)""
	@echo ' '

# Other Targets
clean:
	#Borro el contenido del directorio de compilación
	rm -rf *.o
	-@echo ' ' 
