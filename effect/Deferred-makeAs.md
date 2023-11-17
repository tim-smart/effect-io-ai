# makeAs

Creates a new `Deferred` from the specified `FiberId`.

To import and use `makeAs` from the "Deferred" module:

```ts
import * as Deferred from "effect/Deferred"
// Can be accessed like this
Deferred.makeAs
```

**Signature**

```ts
export declare const makeAs: <E, A>(fiberId: FiberId.FiberId) => Effect.Effect<never, never, Deferred<E, A>>
```
