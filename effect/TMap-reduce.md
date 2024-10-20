# reduce

Atomically folds using a pure function.

To import and use `reduce` from the "TMap" module:

```ts
import * as TMap from "effect/TMap"
// Can be accessed like this
TMap.reduce
```

**Signature**

```ts
export declare const reduce: {
  <Z, K, V>(zero: Z, f: (acc: Z, value: V, key: K) => Z): (self: TMap<K, V>) => STM.STM<Z>
  <K, V, Z>(self: TMap<K, V>, zero: Z, f: (acc: Z, value: V, key: K) => Z): STM.STM<Z>
}
```
