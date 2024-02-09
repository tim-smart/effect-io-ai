# getOrElse

Retrieves value associated with given key or default value, in case the key
isn't present.

To import and use `getOrElse` from the "TMap" module:

```ts
import * as TMap from "effect/TMap"
// Can be accessed like this
TMap.getOrElse
```

**Signature**

```ts
export declare const getOrElse: {
  <K, V>(key: K, fallback: LazyArg<V>): (self: TMap<K, V>) => STM.STM<V, never, never>
  <K, V>(self: TMap<K, V>, key: K, fallback: LazyArg<V>): STM.STM<V, never, never>
}
```
