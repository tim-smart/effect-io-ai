# interruptible

Returns true only if the `Interruption` flag is **enabled** and the
`WindDown` flag is **disabled**.

A fiber is said to be interruptible if interruption is enabled and the fiber
is not in its wind-down phase, in which it takes care of cleanup activities
related to fiber shutdown.

Part of the `Fiber/Runtime/Flags` module from the `@effect/io` package. Also known as `Fiber/Runtime/Flags.interruptible`.
