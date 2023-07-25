NAME = libasm.a

SRCS =	helloWorld.s \
		ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_write.s	\
		ft_read.s \
		ft_strdup.s

OBJS := $(SRCS:%.s=%.o)

all: $(NAME)

%.o: %.s
	nasm -f macho64 $< -o $@

#main.o: main.c
#	gcc -c $< -o $@

#$(NAME): main.o $(OBJS)
#	gcc -Wl,-no_pie $^ -o $@

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)
	ranlib $(NAME)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)
	rm -f test

re: fclean all

test: $(NAME)
	gcc -I. -L. -lasm main.c -o test

.PHONY: test