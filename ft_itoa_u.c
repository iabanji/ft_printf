/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: giabanji <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/11/03 18:09:51 by giabanji          #+#    #+#             */
/*   Updated: 2018/01/11 19:36:10 by giabanji         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static unsigned long long int		count_chars(unsigned long long int a)
{
	unsigned long long int	i;

	i = 1;
	while (a > 9)
	{
		a /= 10;
		i++;
	}
	return (i);
}

char								*ft_itoa_u(unsigned long long int n)
{
	unsigned long long int	m;
	unsigned long long int	i;
	unsigned long long int	num;
	char					*str;

	m = n;
	i = count_chars(m);
	if (!(str = (char*)malloc(sizeof(char) * (i + 1))))
		return (NULL);
	num = 0;
	str[i] = '\0';
	while (i > num)
	{
		str[--i] = (char)(48 + m - (m / 10 * 10));
		m = m / 10;
	}
	return (str);
}
