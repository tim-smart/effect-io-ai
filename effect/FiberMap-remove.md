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
  <K>(key: K): <E, A>(self: FiberMap<K, E, A>) => Effect.Effect<never, never, void>
  <K, E, A>(self: FiberMap<K, E, A>, key: K): Effect.Effect<never, never, void>
}
```
