# awaitEmpty

Wait for the fiber in the FiberHandle to complete.

To import and use `awaitEmpty` from the "FiberHandle" module:

```ts
import * as FiberHandle from "effect/FiberHandle"
// Can be accessed like this
FiberHandle.awaitEmpty
```

**Signature**

```ts
export declare const awaitEmpty: <A, E>(self: FiberHandle<A, E>) => Effect.Effect<void, E>
```
