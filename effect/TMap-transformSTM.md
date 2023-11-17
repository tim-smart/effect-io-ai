# transformSTM

Atomically updates all bindings using a transactional function.

To import and use `transformSTM` from the "TMap" module:

```ts
import * as TMap from "effect/TMap"
// Can be accessed like this
TMap.transformSTM
```

**Signature**

```ts
export declare const transformSTM: {
  <K, V, R, E>(f: (key: K, value: V) => STM.STM<R, E, readonly [K, V]>): (self: TMap<K, V>) => STM.STM<R, E, void>
  <K, V, R, E>(self: TMap<K, V>, f: (key: K, value: V) => STM.STM<R, E, readonly [K, V]>): STM.STM<R, E, void>
}
```
