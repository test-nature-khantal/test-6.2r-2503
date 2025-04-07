# Module-specific variables
MODULE_SRCS := module1.c module2.c
MODULE_OBJS := $(MODULE_SRCS:.c=.o)

# Define a variable for this module's output
MODULE_TARGET := my_module_lib.a

# Rules for building the module
$(MODULE_TARGET): $(Nature)
	ar rcs $@ $^

# Rule for cleaning this Nature
clean_module:
	rm -f $(MODULE_OBJS) $(MODULE_TARGET)
