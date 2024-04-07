# Compiler settings - Can change to clang++ if preferred
CXX = g++

# Compiler flags
CXXFLAGS = -std=c++11 -Wall

# Target executable name and location
TARGET = your_executable

# Source and build directories
SRC_DIR = src
BUILD_DIR = build

# Automatically find all cpp files in the SRC_DIR
SRC = $(wildcard $(SRC_DIR)/*.cpp)

# Generate a list of object files in BUILD_DIR corresponding to SRC
OBJ = $(SRC:$(SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o)

# Default target
all: $(TARGET)

# Ensure the build directory exists
$(shell mkdir -p $(BUILD_DIR))

# Rule to link the program
$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJ)

# Pattern rule for object files
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Rule for cleaning files
clean:
	rm -rf $(BUILD_DIR)/*.o $(TARGET)
	rmdir  $(BUILD_DIR)

# Rule for running the program
run: $(TARGET)
	./$(TARGET)
