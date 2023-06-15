# exponential

A schedule that always recurs, but will wait a certain amount between
repetitions, given by `base * factor.pow(n)`, where `n` is the number of
repetitions so far. Returns the current duration between recurrences.

Part of the `Schedule` module from the `@effect/io` package. Also known as `Schedule.exponential`.
