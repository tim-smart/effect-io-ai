# modify

Updates the value of the specified key within the `HashMap` if it exists.

To import and use `modify` from the "HashMap" module:

```ts
import * as HashMap from '@effect/data/HashMap'

// Can be accessed like this
HashMap.modify
```

**Signature**

```ts
export declare const modify: {
  <K, V>(key: K, f: (v: V) => V): (self: HashMap<K, V>) => HashMap<K, V>
  <K, V>(self: HashMap<K, V>, key: K, f: (v: V) => V): HashMap<K, V>
}
```
