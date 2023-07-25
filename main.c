/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: saeby <saeby@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/14 17:56:34 by saeby             #+#    #+#             */
/*   Updated: 2023/01/15 19:00:30 by saeby            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

// https://en.wikipedia.org/wiki/X86_calling_conventions
// https://opensource.apple.com/source/xnu/xnu-1504.3.12/bsd/kern/syscalls.master

#include "libasm.h"

int	main(void)
{
	char	*dst;
	char	*src = "Bonsoir\n";
	ft_write(1, src, 25);
	dst = ft_strdup("Comment va ce test ?\n");
	ft_write(1, dst, 50);
	free(dst);
	return (0);
}