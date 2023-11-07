# reduceWithIndex

Atomically folds using a pure function.

To import and use `reduceWithIndex` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.reduceWithIndex
```

**Signature**

```ts
export declare const reduceWithIndex: {
  <Z, K, V>(zero: Z, f: (acc: Z, value: V, key: K) => Z): (self: TMap<K, V>) => STM.STM<never, never, Z>
  <K, V, Z>(self: TMap<K, V>, zero: Z, f: (acc: Z, value: V, key: K) => Z): STM.STM<never, never, Z>
}
```
