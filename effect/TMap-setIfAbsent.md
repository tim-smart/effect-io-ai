# setIfAbsent

Stores new binding in the map if it does not already exist.

To import and use `setIfAbsent` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.setIfAbsent
```

**Signature**

```ts
export declare const setIfAbsent: {
  <K, V>(key: K, value: V): (self: TMap<K, V>) => STM.STM<never, never, void>
  <K, V>(self: TMap<K, V>, key: K, value: V): STM.STM<never, never, void>
}
```
