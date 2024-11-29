# has

Check if a key exists in the FiberMap.

To import and use `has` from the "FiberMap" module:

ts
import \* as FiberMap from "effect/FiberMap"
// Can be accessed like this
FiberMap.has
undefined

**Signature**

```ts
export declare const has: {
  <K>(key: K): <A, E>(self: FiberMap<K, A, E>) => Effect.Effect<boolean>
  <K, A, E>(self: FiberMap<K, A, E>, key: K): Effect.Effect<boolean>
}
```
