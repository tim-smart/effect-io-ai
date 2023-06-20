# modifyAt

Set or remove the specified key in the `MutableHashMap` using the specified
update function.

To import and use `modifyAt` from the "MutableHashMap" module:

```ts
import * as MutableHashMap from '@effect/data/MutableHashMap'

// Can be accessed like this
MutableHashMap.modifyAt
```

**Signature**

```ts
export declare const modifyAt: {
  <K, V>(key: K, f: (value: Option.Option<V>) => Option.Option<V>): (self: MutableHashMap<K, V>) => MutableHashMap<K, V>
  <K, V>(self: MutableHashMap<K, V>, key: K, f: (value: Option.Option<V>) => Option.Option<V>): MutableHashMap<K, V>
}
```
