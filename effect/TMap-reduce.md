# reduce

Atomically folds using a pure function.

To import and use `reduce` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.reduce
```

**Signature**

```ts
export declare const reduce: {
  <Z, V>(zero: Z, f: (acc: Z, value: V) => Z): <K>(self: TMap<K, V>) => STM.STM<never, never, Z>
  <K, V, Z>(self: TMap<K, V>, zero: Z, f: (acc: Z, value: V) => Z): STM.STM<never, never, Z>
}
```
