# interrupt

Creates an `Interrupt` cause from a `FiberId`.

**Details**

This function represents a fiber that has been interrupted. It stores the
identifier of the interrupted fiber, enabling precise tracking of concurrent
cancellations.

To import and use `interrupt` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.interrupt
```

**Signature**

```ts
export declare const interrupt: (fiberId: FiberId.FiberId) => Cause<never>
```
