# reduceWithIndexSTM

Atomically folds using a transactional function.

To import and use `reduceWithIndexSTM` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.reduceWithIndexSTM
```

**Signature**

```ts
export declare const reduceWithIndexSTM: {
  <Z, V, K, R, E>(zero: Z, f: (acc: Z, value: V, key: K) => STM.STM<R, E, Z>): (self: TMap<K, V>) => STM.STM<R, E, Z>
  <Z, V, K, R, E>(self: TMap<K, V>, zero: Z, f: (acc: Z, value: V, key: K) => STM.STM<R, E, Z>): STM.STM<R, E, Z>
}
```
