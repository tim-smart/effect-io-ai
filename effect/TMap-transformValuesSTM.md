# transformValuesSTM

Atomically updates all values using a transactional function.

To import and use `transformValuesSTM` from the "TMap" module:

ts
import \* as TMap from "effect/TMap"
// Can be accessed like this
TMap.transformValuesSTM
undefined

**Signature**

```ts
export declare const transformValuesSTM: {
  <V, R, E>(f: (value: V) => STM.STM<V, E, R>): <K>(self: TMap<K, V>) => STM.STM<void, E, R>
  <K, V, R, E>(self: TMap<K, V>, f: (value: V) => STM.STM<V, E, R>): STM.STM<void, E, R>
}
```
