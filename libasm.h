/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: saeby <saeby@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/15 14:24:10 by saeby             #+#    #+#             */
/*   Updated: 2023/01/15 18:40:13 by saeby            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef	LIBASM_H
# define LIBASM_H
# include <stdio.h>
# include <stdlib.h>

extern size_t	ft_strlen(const char *s);
extern char		*ft_strcpy(char *restrict dest, const char *src);
extern int		ft_strcmp(const char *s1, const char *s2);
extern ssize_t	ft_write(int fd, const void *buf, size_t count);
extern ssize_t	ft_read(int fd, void *buf, size_t count);
extern char		*ft_strdup(const char *s);

#endif