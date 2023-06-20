# Interrupt

The `Interrupt` cause represents failure due to `Fiber` interruption, which
contains the `FiberId` of the interrupted `Fiber`.

To import and use `Interrupt` from the "Cause" module:

```ts
import * as Cause from '@effect/io/Cause'

// Can be accessed like this
Cause.Interrupt
```
