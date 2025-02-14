# awaitEmpty

Wait for the FiberMap to be empty.

To import and use `awaitEmpty` from the "FiberMap" module:

```ts
import * as FiberMap from "effect/FiberMap"
// Can be accessed like this
FiberMap.awaitEmpty
```

**Signature**

```ts
export declare const awaitEmpty: <K, A, E>(self: FiberMap<K, A, E>) => Effect.Effect<void, E>
```
