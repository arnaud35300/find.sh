# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    find.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arguilla <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/27 23:01:47 by arguilla          #+#    #+#              #
#    Updated: 2020/10/13 18:13:05 by arguilla         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!bin/sh

if ! command -v fdfind &> /dev/null
then
    echo "fdfind could not be found."
	find $HOME -type f -name $1 -print 2>/dev/null | head -n1 | xargs -n1 cat
	exit
fi
fdfind $1 $HOME | head -n1 | xargs -n1 cat
