# get

Retrieves value associated with given key.

To import and use `get` from the "TMap" module:

```ts
import * as TMap from "effect/TMap"
// Can be accessed like this
TMap.get
```

**Signature**

```ts
export declare const get: {
  <K>(key: K): <V>(self: TMap<K, V>) => STM.STM<Option.Option<V>>
  <K, V>(self: TMap<K, V>, key: K): STM.STM<Option.Option<V>>
}
```
