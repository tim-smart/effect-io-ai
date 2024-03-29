# sequentialFinalizers

Returns a new scoped workflow that runs finalizers added to the scope of
this workflow sequentially in the reverse of the order in which they were
added. Note that finalizers are run sequentially by default so this only
has meaning if used within a scope where finalizers are being run in
parallel.

To import and use `sequentialFinalizers` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.sequentialFinalizers
```

**Signature**

```ts
export declare const sequentialFinalizers: <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
```
