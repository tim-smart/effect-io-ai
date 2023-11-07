# forEach

Atomically performs transactional-effect for each binding present in map.

To import and use `forEach` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.forEach
```

**Signature**

```ts
export declare const forEach: {
  <K, V, R, E, _>(f: (key: K, value: V) => STM.STM<R, E, _>): (self: TMap<K, V>) => STM.STM<R, E, void>
  <K, V, R, E, _>(self: TMap<K, V>, f: (key: K, value: V) => STM.STM<R, E, _>): STM.STM<R, E, void>
}
```
