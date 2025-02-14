# awaitEmpty

Wait until the fiber set is empty.

To import and use `awaitEmpty` from the "FiberSet" module:

```ts
import * as FiberSet from "effect/FiberSet"
// Can be accessed like this
FiberSet.awaitEmpty
```

**Signature**

```ts
export declare const awaitEmpty: <A, E>(self: FiberSet<A, E>) => Effect.Effect<void>
```
