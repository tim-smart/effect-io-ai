# validateWithPar

Returns an effect that executes both this effect and the specified effect,
in parallel, combining their results with the specified `f` function. If
both sides fail, then the cause will be combined.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.validateWithPar`.
