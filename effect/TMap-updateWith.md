# updateWith

Updates the mapping for the specified key with the specified function,
which takes the current value of the key as an input, if it exists, and
either returns `Some` with a new value to indicate to update the value in
the map or `None` to remove the value from the map. Returns `Some` with the
updated value or `None` if the value was removed from the map.

To import and use `updateWith` from the "TMap" module:

ts
import \* as TMap from "effect/TMap"
// Can be accessed like this
TMap.updateWith
undefined

**Signature**

```ts
export declare const updateWith: {
  <K, V>(key: K, f: (value: Option.Option<V>) => Option.Option<V>): (self: TMap<K, V>) => STM.STM<Option.Option<V>>
  <K, V>(self: TMap<K, V>, key: K, f: (value: Option.Option<V>) => Option.Option<V>): STM.STM<Option.Option<V>>
}
```
