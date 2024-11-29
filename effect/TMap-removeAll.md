# removeAll

Deletes all entries associated with the specified keys.

To import and use `removeAll` from the "TMap" module:

ts
import \* as TMap from "effect/TMap"
// Can be accessed like this
TMap.removeAll
undefined

**Signature**

```ts
export declare const removeAll: {
  <K>(keys: Iterable<K>): <V>(self: TMap<K, V>) => STM.STM<void>
  <K, V>(self: TMap<K, V>, keys: Iterable<K>): STM.STM<void>
}
```
