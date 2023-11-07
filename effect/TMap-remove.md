# remove

Removes binding for given key.

To import and use `remove` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.remove
```

**Signature**

```ts
export declare const remove: {
  <K>(key: K): <V>(self: TMap<K, V>) => STM.STM<never, never, void>
  <K, V>(self: TMap<K, V>, key: K): STM.STM<never, never, void>
}
```
