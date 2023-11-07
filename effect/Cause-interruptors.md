# interruptors

Returns a `HashSet` of `FiberId`s for all fibers that interrupted the fiber
described by the specified cause.

To import and use `interruptors` from the "Cause" module:

```ts
import * as Cause from 'effect/Cause'

// Can be accessed like this
Cause.interruptors
```

**Signature**

```ts
export declare const interruptors: <E>(self: Cause<E>) => HashSet.HashSet<FiberId.FiberId>
```
