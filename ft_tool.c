/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_tool.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: maducham <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/10/12 19:37:28 by maducham          #+#    #+#             */
/*   Updated: 2015/10/12 19:37:28 by maducham         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <ft_select.h>

int		ft_putchar(int c)
{
	int	fd;

	fd = open("/dev/tty", O_RDWR);
	if (fd == -1)
	{
		write(2, "Open error\n", 11);
		exit(-1);
	}
	write(fd, &c, 1);
	close(fd);
	return (0);
}

int		ft_strlen(char *str)
{
	int	i;

	i = 0;
	while (*str++ != '\0')
		i++;
	return (i);
}

void	*ft_memset(void *b, int c, size_t len)
{
	size_t	i;

	i = 0;
	while (i < len)
	{
		((unsigned char *)b)[i] = (unsigned char)c;
		i++;
	}
	return (b);
}
