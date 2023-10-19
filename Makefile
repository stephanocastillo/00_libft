# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: axcastil <axcastil@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/27 13:53:55 by axcastil          #+#    #+#              #
#    Updated: 2023/10/19 19:59:58 by axcastil         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 			= libft.a

SRCS			= ft_atoi.c, ft_bzero.c, ft_isalnum.c, ft_isalpha.c, ft_isascii.c, ft_isdigit.c \
					ft_isprint.c, ft_memcpy.c, ft_memmove.c, ft_memset.c, ft_strchr.c, ft_strlcat.c \
					ft_strlcpy.c, ft_strlen.c, ft_tolower.c, ft_toupper.c, ft_strnstr.c, ft_strrchr.c \
					ft_strncmp.c, ft_memchr.c, ft_memcmp.c, ft_calloc.c, ft_strdup.c, ft_substr.c \
					ft_strjoin.c, ft_strtrim.c, ft_split.c, ft_itoa.c, ft_strmapi.c, ft_striteri.c \
					ft_putchar_fd.c, ft_putstr_fd.c, ft_putendl_fd.c, ft_putnbr_fd.c
OBJS			= $(SRCS:.c=.o)

BONUS			= ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c ft_lstclear_bonus.c \
					ft_lstdelone_bonus.c ft_lstiter_bonus.c ft_lstlast_bonus.c \
					ft_lstmap_bonus.c ft_lstnew_bonus.c ft_lstsize_bonus.c
BONUS_OBJS		= $(BONUS:.c=.o)

CC				= gcc
RM				= rm -f
CFLAGS			= -Wall -Wextra -Werror -I.

all:			$(NAME)

$(NAME):		$(OBJS)
				ar rcs $(NAME) $(OBJS)

clean:
				$(RM) $(OBJS) $(BONUS_OBJS)

fclean:			clean
				$(RM) $(NAME)

re:				fclean $(NAME)

bonus:			$(OBJS) $(BONUS_OBJS)
				ar rcs $(NAME) $(OBJS) $(BONUS_OBJS)

.PHONY:			all clean fclean re bonus