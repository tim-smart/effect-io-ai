# reduceWithIndex

Reduces the specified state over the entries of the `HashMap`.

To import and use `reduceWithIndex` from the "HashMap" module:

```ts
import * as HashMap from '@effect/data/HashMap'

// Can be accessed like this
HashMap.reduceWithIndex
```

**Signature**

```ts
export declare const reduceWithIndex: {
  <Z, V, K>(zero: Z, f: (accumulator: Z, value: V, key: K) => Z): (self: HashMap<K, V>) => Z
  <Z, V, K>(self: HashMap<K, V>, zero: Z, f: (accumulator: Z, value: V, key: K) => Z): Z
}
```
