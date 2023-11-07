# reduce

Reduces the specified state over the entries of the `HashMap`.

To import and use `reduce` from the "HashMap" module:

```ts
import * as HashMap from 'effect/HashMap'

// Can be accessed like this
HashMap.reduce
```

**Signature**

```ts
export declare const reduce: {
  <Z, V, K>(zero: Z, f: (accumulator: Z, value: V, key: K) => Z): (self: HashMap<K, V>) => Z
  <K, V, Z>(self: HashMap<K, V>, zero: Z, f: (accumulator: Z, value: V, key: K) => Z): Z
}
```
