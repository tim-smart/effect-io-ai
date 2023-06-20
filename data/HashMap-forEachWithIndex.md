# forEachWithIndex

Applies the specified function to the entries of the `HashMap`.

To import and use `forEachWithIndex` from the "HashMap" module:

```ts
import * as HashMap from '@effect/data/HashMap'

// Can be accessed like this
HashMap.forEachWithIndex
```

**Signature**

```ts
export declare const forEachWithIndex: {
  <V, K>(f: (value: V, key: K) => void): (self: HashMap<K, V>) => void
  <V, K>(self: HashMap<K, V>, f: (value: V, key: K) => void): void
}
```
