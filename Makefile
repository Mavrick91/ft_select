# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: maducham <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/10/12 19:37:07 by maducham          #+#    #+#              #
#    Updated: 2015/10/12 19:46:06 by maducham         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = ft_select

SOURCES = main.c \
			ft_tool.c \
			init_list.c \
			clean_list.c \
			exit.c move.c \
			del_arg.c \
			write_list.c \
			loop.c \
			signals.c

OBJECTS = $(SOURCES:.c=.o)

HEADERS = ./includes/ft_select.h

FLAGS = -Wall -Werror -Wextra -O3 -I ./includes

LFLAGS = -ltermcap

all: $(NAME)

$(NAME): $(OBJECTS)
	$(CC) $(FLAGS) $(LFLAGS) -o $@ $^ 

%.o: %.c $(HEADERS)
	$(CC) $(FLAGS) -c $<

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re	
