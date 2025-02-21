# Interrupt

Represents fiber interruption within a `Cause`.

**Details**

This interface models a scenario where an effect was halted by an external
signal, carrying a `FiberId` that identifies which fiber was interrupted.
Interruption is a normal part of concurrency, used for cancellation or
resource cleanup.

To import and use `Interrupt` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.Interrupt
```
