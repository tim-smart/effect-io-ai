# forEach

Atomically performs transactional-effect for each binding present in map.

To import and use `forEach` from the "TMap" module:

ts
import \* as TMap from "effect/TMap"
// Can be accessed like this
TMap.forEach
undefined

**Signature**

```ts
export declare const forEach: {
  <K, V, X, E, R>(f: (key: K, value: V) => STM.STM<X, E, R>): (self: TMap<K, V>) => STM.STM<void, E, R>
  <K, V, X, E, R>(self: TMap<K, V>, f: (key: K, value: V) => STM.STM<X, E, R>): STM.STM<void, E, R>
}
```
