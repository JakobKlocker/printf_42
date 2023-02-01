NAME = libftprintf.a
SRC = char_found.c get_var_len.c hex_big_found.c hex_found.c init_flags.c int_found_2.c int_found.c print_hex_p.c \
		print_nbr.c ptr_found.c str_found.c u_int_found_2.c u_int_found.c main.c
OBJ = $(SRC:.c=.o)
CC = cc
FLAG = -Wall -Werror -Wextra
OPTION = -c

all: $(NAME)

$(NAME):
		$(MAKE) all bonus -C ./libft
		cp libft/libft.a $(NAME)
		$(CC) $(FLAG) $(OPTION) $(SRC)
		ar -rcs $(NAME) $(OBJ)

clean: 
		$(MAKE) clean -C ./libft
		rm -f $(OBJ)

fclean: clean
		$(MAKE) fclean -C ./libft
		rm -f $(NAME)

re:		fclean all

bonus:	all

.PHONY: all bonus clean fclean re