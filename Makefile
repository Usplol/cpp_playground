######################################
# target
######################################
TARGET = main

######################################
# building variables
######################################
# debug build?
DEBUG = 1
# optimization
OPT = -Og

# warrnings
WARNING =  -Werror -Wall -Weffc++ -Wextra -Wsign-conversion

CXX = g++
SZ = size





#######################################
# paths
#######################################
# Build path
BUILD_DIR = build

C_SOURCES =  \
main.cpp \
test.cpp

C_INCLUDES =  \
-IInc

CXXFLAGS = $(C_INCLUDES) $(OPT) $(WARNING) -std=c++17 -fdiagnostics-color=always

ifeq ($(DEBUG), 1)
CXXFLAGS += -g
endif

# default action: build all
all: $(BUILD_DIR)/$(TARGET).exe


#######################################
# build the application
#######################################
# list of objects
OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(C_SOURCES:.cpp=.o)))
vpath %.cpp $(sort $(dir $(C_SOURCES)))

$(BUILD_DIR)/%.o: %.cpp  Makefile | $(BUILD_DIR)
	$(CXX) -c $(CXXFLAGS) $^ -o $@

$(BUILD_DIR)/$(TARGET).exe: $(OBJECTS) Makefile
	$(CXX) $(OBJECTS) $(CXXFLAGS) -o $@
	$(SZ) $@


$(BUILD_DIR):
	mkdir $@

#######################################
# clean up
#######################################
clean:
	-rm -fR $(BUILD_DIR)

echo: $(OBJECTS)
	echo $(OBJECTS)

#######################################
# dependencies
#######################################
-include $(wildcard $(BUILD_DIR)/*.d)

