#include <cstddef>

double multiply_accumulate(const double *x, const double *w, size_t len)
{
    double result = 0.0;
    for (size_t i = 0 ; i < len ; ++i)
        result += x[i] * w[i];

    return result;
}

