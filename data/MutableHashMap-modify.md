# modify

Updates the value of the specified key within the `MutableHashMap` if it exists.

To import and use `modify` from the "MutableHashMap" module:

```ts
import * as MutableHashMap from '@effect/data/MutableHashMap'

// Can be accessed like this
MutableHashMap.modify
```

**Signature**

```ts
export declare const modify: {
  <K, V>(key: K, f: (v: V) => V): (self: MutableHashMap<K, V>) => MutableHashMap<K, V>
  <K, V>(self: MutableHashMap<K, V>, key: K, f: (v: V) => V): MutableHashMap<K, V>
}
```
