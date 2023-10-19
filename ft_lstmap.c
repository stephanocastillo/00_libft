/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: axcastil <axcastil@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/17 04:38:33 by axcastil          #+#    #+#             */
/*   Updated: 2023/10/18 23:10:08 by axcastil         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*lst2;
	t_list	*nodo;

	if (!lst || !f || !del)
		return (0);
	lst2 = 0;
	while (lst)
	{
		nodo = ft_lstnew(f(lst->content));
		if (!nodo)
		{
			ft_lstclear(&lst2, del);
			return (NULL);
		}
		ft_lstadd_back(&lst2, nodo);
		lst = lst->next;
	}
	return (lst2);
}
