# interruptors

Collects all `FiberId`s responsible for interrupting a fiber.

**Details**

This function returns a set of IDs indicating which fibers caused
interruptions within this `Cause`. It's useful for debugging concurrency
issues or tracing cancellations.

To import and use `interruptors` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.interruptors
```

**Signature**

```ts
export declare const interruptors: <E>(self: Cause<E>) => HashSet.HashSet<FiberId.FiberId>
```
