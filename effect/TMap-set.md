# set

Stores new binding into the map.

To import and use `set` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.set
```

**Signature**

```ts
export declare const set: {
  <K, V>(key: K, value: V): (self: TMap<K, V>) => STM.STM<never, never, void>
  <K, V>(self: TMap<K, V>, key: K, value: V): STM.STM<never, never, void>
}
```
