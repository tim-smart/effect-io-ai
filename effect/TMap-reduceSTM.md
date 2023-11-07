# reduceSTM

Atomically folds using a transactional function.

To import and use `reduceSTM` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.reduceSTM
```

**Signature**

```ts
export declare const reduceSTM: {
  <Z, V, R, E>(zero: Z, f: (acc: Z, value: V) => STM.STM<R, E, Z>): <K>(self: TMap<K, V>) => STM.STM<R, E, Z>
  <K, V, Z, R, E>(self: TMap<K, V>, zero: Z, f: (acc: Z, value: V) => STM.STM<R, E, Z>): STM.STM<R, E, Z>
}
```
