# get

Safely lookup the value for the specified key in the `HashMap` using the
internal hashing function.

To import and use `get` from the "HashMap" module:

```ts
import * as HashMap from '@effect/data/HashMap'

// Can be accessed like this
HashMap.get
```

**Signature**

```ts
export declare const get: {
  <K1>(key: K1): <K, V>(self: HashMap<K, V>) => Option<V>
  <K, V, K1>(self: HashMap<K, V>, key: K1): Option<V>
}
```
