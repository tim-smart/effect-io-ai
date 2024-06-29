# unsafeHas

Check if a key exists in the FiberMap.

To import and use `unsafeHas` from the "FiberMap" module:

```ts
import * as FiberMap from "effect/FiberMap"
// Can be accessed like this
FiberMap.unsafeHas
```

**Signature**

```ts
export declare const unsafeHas: {
  <K>(key: K): <A, E>(self: FiberMap<K, A, E>) => boolean
  <K, A, E>(self: FiberMap<K, A, E>, key: K): boolean
}
```
