# Compiler
CP = g++

# Flags
FLAGS = -Wall -Werror -std=c++14

# Target executable
TARGET = main

# Executable to be deleted
TARGET_DEL = main.exe

# Source files
SRCS = main.cpp 

MODULES = vec.cpp

# Object files
OBJS = src/$(SRCS:.cpp=.o) src/modules/$(MODULES:.cpp=.o)

.default: all

all: $(TARGET) run clean

# Rule to link object files into the target executable
$(TARGET): $(OBJS)
	$(CP) $(FLAGS) -O -o $(TARGET) $(OBJS)

# Rule to compile .cpp files into .o files
%.o: %.cpp
	$(CP) $(FLAGS) -c $< -o $@

# Rule to run the executable
run: $(TARGET)
	./$(TARGET) > images/generated_image.ppm

# Clean rule to remove generated files
clean:
	rm ./$(TARGET) $(OBJS)