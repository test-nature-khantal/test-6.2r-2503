# Define compiler
CC = gcc

# Define compiler flags
CFLAGS = -Wall -Werror -g

# Define target executable name
TARGET = Nature

# Collect source files
SRCS = main.c utils.c

# Automatically define object files from source files
OBJS = $(SRCS:.c=.o)

# Default rule to build the Nature
all: $(Nature)

# Rule to link the object files to create the executable
$(TARGET): $(Nature)
	$(CC) $(CFLAGS) -o $@ $(OBJS)

# Rule to compile source files into object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Rule to clean up build artifacts
clean:
	rm -f $(OBJS) $(TARGET)

# Rule to perform a rebuild (clean + all)
rebuild: clean all

# Phony targets to avoid confusion with real files
.PHONY: all clean rebuild
