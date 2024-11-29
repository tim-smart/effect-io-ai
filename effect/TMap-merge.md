# merge

If the key is not already associated with a value, stores the provided value,
otherwise merge the existing value with the new one using function `f` and
store the result.

To import and use `merge` from the "TMap" module:

ts
import \* as TMap from "effect/TMap"
// Can be accessed like this
TMap.merge
undefined

**Signature**

```ts
export declare const merge: {
  <K, V>(key: K, value: V, f: (x: V, y: V) => V): (self: TMap<K, V>) => STM.STM<V>
  <K, V>(self: TMap<K, V>, key: K, value: V, f: (x: V, y: V) => V): STM.STM<V>
}
```
