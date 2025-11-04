#include <unistd.h>
#include <string.h>

int	print(char *str)
{
	return (write(1, str, strlen(str)));
}