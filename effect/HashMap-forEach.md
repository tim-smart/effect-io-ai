# forEach

Applies the specified function to the entries of the `HashMap`.

To import and use `forEach` from the "HashMap" module:

```ts
import * as HashMap from 'effect/HashMap'

// Can be accessed like this
HashMap.forEach
```

**Signature**

```ts
export declare const forEach: {
  <V, K>(f: (value: V, key: K) => void): (self: HashMap<K, V>) => void
  <V, K>(self: HashMap<K, V>, f: (value: V, key: K) => void): void
}
```
