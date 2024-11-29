# transformSTM

Atomically updates all bindings using a transactional function.

To import and use `transformSTM` from the "TMap" module:

ts
import \* as TMap from "effect/TMap"
// Can be accessed like this
TMap.transformSTM
undefined

**Signature**

```ts
export declare const transformSTM: {
  <K, V, R, E>(f: (key: K, value: V) => STM.STM<readonly [K, V], E, R>): (self: TMap<K, V>) => STM.STM<void, E, R>
  <K, V, R, E>(self: TMap<K, V>, f: (key: K, value: V) => STM.STM<readonly [K, V], E, R>): STM.STM<void, E, R>
}
```
