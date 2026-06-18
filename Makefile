# Nome do executável final
TARGET = programa

# Compiladores
CC = gcc
CXX = g++
LD = g++

# Flags de compilação
CFLAGS = -Wall -O2
CXXFLAGS = -Wall -O2
LDFLAGS = 

# Busca todos os arquivos .c e .cpp no diretório atual
C_SOURCES := $(wildcard *.c)
CPP_SOURCES := $(wildcard *.cpp)
OBJECTS := $(C_SOURCES:.c=.o) $(CPP_SOURCES:.cpp=.o)

# Regra padrão
all: $(TARGET) run

# Linkagem final
$(TARGET): $(OBJECTS)
	@$(LD) -static $(OBJECTS) -o $@ $(LDFLAGS)

# Compilação dos arquivos .c
%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

# Compilação dos arquivos .cpp
%.o: %.cpp
	@$(CXX) $(CXXFLAGS) -c $< -o $@

# Executar o programa após compilar
run: $(TARGET)
	@./$(TARGET)

# Limpeza
clean:
	@rm -f *.o $(TARGET)

.PHONY: all clean run