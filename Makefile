# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: giabanji <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/08 16:32:22 by giabanji          #+#    #+#              #
#    Updated: 2017/12/27 19:09:30 by giabanji         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
FLAGS = -Wall -Wextra -Werror
ODIR = bin/
OBJ = $(SRC:.c=.o)
EXT = libft.h
SRC =

SRC += ft_strcat.c
SRC += ft_strcmp.c
SRC += ft_strdup.c
SRC += ft_striteri.c
SRC += ft_strlen.c
SRC += ft_strncat.c
SRC += ft_strnequ.c
SRC += ft_strsplit.c
SRC += ft_strtrim.c
SRC += ft_strchr.c
SRC += ft_strcpy.c
SRC += ft_strequ.c
SRC += ft_strjoin.c
SRC += ft_strmap.c
SRC += ft_strncmp.c
SRC += ft_strnew.c
SRC += ft_strstr.c
SRC += ft_strnstr.c
SRC += ft_strclr.c
SRC += ft_strdel.c
SRC += ft_striter.c
SRC += ft_strlcat.c
SRC += ft_strmapi.c
SRC += ft_strncpy.c
SRC += ft_strrchr.c
SRC += ft_strsub.c
SRC += ft_isascii.c
SRC += ft_isdigit.c
SRC += ft_isprint.c
SRC += ft_isalpha.c
SRC += ft_toupper.c
SRC += ft_tolower.c
SRC += ft_atoi.c
SRC += ft_itoa.c
SRC += ft_itoa_u.c
SRC += ft_bzero.c
SRC += ft_isalnum.c
SRC += ft_putchar.c
SRC += ft_putchar_fd.c
SRC += ft_putendl.c
SRC += ft_putendl_fd.c
SRC += ft_putnbr.c
SRC += ft_putnbr_fd.c
SRC += ft_putstr.c
SRC += ft_putstr_fd.c
SRC += ft_memalloc.c
SRC += ft_memccpy.c
SRC += ft_memchr.c
SRC += ft_memcmp.c
SRC += ft_memcpy.c
SRC += ft_memdel.c
SRC += ft_memmove.c
SRC += ft_memset.c
SRC += ft_lstnew.c
SRC += ft_lstdelone.c
SRC += ft_lstdel.c
SRC += ft_lstadd.c
SRC += ft_lstiter.c
SRC += ft_lstmap.c
SRC += ft_countwords.c
SRC += ft_istab.c
SRC += ft_foreach.c
SRC += ft_count_if.c
SRC += ft_cat.c
SRC += ft_itoa_base.c
SRC += ft_itoa_base_u.c
SRC += ft_wstrlen.c
SRC += ft_putwchar.c
SRC += ft_printflags.c
SRC += ft_validformat.c
SRC += print_argument.c
SRC += ft_print_ch.c
SRC += ft_validstuct.c
SRC += ft_print_ox.c
SRC += ft_wchar.c
SRC += uplowcase.c
SRC += ft_printf.c

O = $(addprefix $(ODIR), $(OBJ))

all: $(NAME)

$(NAME): $(O) $(EXT)
	ar rc $(NAME) $(O)
	ranlib $(NAME)

$(ODIR)%.o: %.c $(EXT)
	gcc $(FLAGS) -c $< -o $@

$(O): | ./bin

./bin:
	mkdir $(ODIR)

clean:
	rm -f bin/*.o

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
