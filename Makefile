NAME = so_long


MINILIBX_PATH = ./minilibx-linux
MINILIBX = 

LIBFT_PATH = ./libft
LIBFT = $(LIBFT_PATH)/libft.a

CC = gcc
CFLAGS = -Wall -Werror -Wextra 
SRCS = main.c 
OBJS = ${SRCS:.c=.o}

all: minilibx

$(LIBFT):
		$(MAKE) -C $(LIBFT_PATH)

$(NAME): $(LIBFT) $(SRCS)
		$(CC) $(CFLAGS) $(SRCS) $(LIBFT) -o $(NAME)

clean:
		@$(MAKE) -C $(LIBFT_PATH) fclean

fclean: clean
		@rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re
