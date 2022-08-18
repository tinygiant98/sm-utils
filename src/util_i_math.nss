// -----------------------------------------------------------------------------
//    File: util_i_math.nss
//  System: Utilities
//     URL: https://github.com/squattingmonk/nwn-core-framework
// Authors: Michael A. Sinclair (Squatting Monk) <squattingmonk@gmail.com>
// -----------------------------------------------------------------------------
// This file contains useful math utility functions. Note than some of the float
// functions (notably fmod) may be slightly off (+/- a millionth) due to the
// nature of floating point arithmetic.
// -----------------------------------------------------------------------------

// -----------------------------------------------------------------------------
//                              Function Prototypes
// -----------------------------------------------------------------------------

// ---< clamp >---
// ---< util_i_math >---
// If nValue is less than nMin, returns nMin. If nValue is greater than nMax,
// returns nMax. Otherwise, returns nValue.
int clamp(int nValue, int nMin, int nMax);

// ---< fclamp >---
// ---< util_i_math >---
// If fValue is less than fMin, returns fMin. If fValue is greater than fMax,
// returns fMax. Otherwise, returns fValue.
float fclamp(float fValue, float fMin, float fMax);

// ---< max >---
// ---< util_i_math >---
// Returns the larger of two integers.
int max(int a, int b);

// ---< min >---
// ---< util_i_math >---
// Returns the smaller of two integers
int min(int a, int b);

// ---< sign >---
// ---< util_i_math >---
// Returns the sign of an integer (i.e., returns -1 if negative, 0 if 0, or 1 if
// positive).
int sign(int n);

// ---< fmax >---
// ---< util_i_math >---
// Returns the larger of two floats.
float fmax(float a, float b);

// ---< fmin >---
// ---< util_i_math >---
// Returns the smaller of two floats.
float fmin(float a, float b);

// ---< trunc >---
// ---< util_i_math >---
// Returns f with any fractional part removed.
float trunc(float f);

// ---< frac >---
// ---< util_i_math >---
// Returns the fractional part of f (i.e., the numbers to the right of the
// decimal point).
float frac(float f);

// ---< fmod >---
// ---< util_i_math >---
// Returns a % b (modulo function).
float fmod(float a, float b);

// -----------------------------------------------------------------------------
//                             Function Definitions
// -----------------------------------------------------------------------------

int clamp(int nValue, int nMin, int nMax)
{
    return (nValue < nMin) ? nMin : ((nValue > nMax) ? nMax : nValue);
}

float fclamp(float fValue, float fMin, float fMax)
{
    return (fValue < fMin) ? fMin : ((fValue > fMax) ? fMax : fValue);
}

int max(int a, int b)
{
    return (b > a) ? b : a;
}

int min(int a, int b)
{
    return (b > a) ? a : b;
}

int sign(int n)
{
    return (n > 0) ? 1 : (n < 0) ? -1 : 0;
}

float fmax(float a, float b)
{
    return (b > a) ? b : a;
}

float fmin(float a, float b)
{
    return (b > a) ? a : b;
}

float trunc(float f)
{
    return IntToFloat(FloatToInt(f));
}

float frac(float f)
{
    return f - trunc(f);
}

float fmod(float a, float b)
{
    return a - b * trunc(a / b);
}
