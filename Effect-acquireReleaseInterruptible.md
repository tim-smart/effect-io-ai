# acquireReleaseInterruptible

This function is a variant of `acquireRelease` that allows the `acquire`
`Effect` value to be interruptible.

Since the `acquire` `Effect` value could be interrupted after partially
acquiring resources, the `release` `Effect` value is not allowed to access
the resource produced by `acquire` and must independently determine what
finalization, if any, needs to be performed (e.g. by examining in memory
state).

Additionally, the `release` `Effect` value may depend on the `Exit` value
specified when the scope is closed.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.acquireReleaseInterruptible`.
