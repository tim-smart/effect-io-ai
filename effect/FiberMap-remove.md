# remove

Remove a fiber from the FiberMap, interrupting it if it exists.

To import and use `remove` from the "FiberMap" module:

```ts
import * as FiberMap from "effect/FiberMap"
// Can be accessed like this
FiberMap.remove
```

**Signature**

```ts
export declare const remove: {
  <K>(key: K): <A, E>(self: FiberMap<K, A, E>) => Effect.Effect<void>
  <K, A, E>(self: FiberMap<K, A, E>, key: K): Effect.Effect<void>
}
```
