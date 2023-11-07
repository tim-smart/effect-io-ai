# transformValuesSTM

Atomically updates all values using a transactional function.

To import and use `transformValuesSTM` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.transformValuesSTM
```

**Signature**

```ts
export declare const transformValuesSTM: {
  <V, R, E>(f: (value: V) => STM.STM<R, E, V>): <K>(self: TMap<K, V>) => STM.STM<R, E, void>
  <K, V, R, E>(self: TMap<K, V>, f: (value: V) => STM.STM<R, E, V>): STM.STM<R, E, void>
}
```
