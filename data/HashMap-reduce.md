# reduce

Reduces the specified state over the values of the `HashMap`.

To import and use `reduce` from the "HashMap" module:

```ts
import * as HashMap from '@effect/data/HashMap'

// Can be accessed like this
HashMap.reduce
```

**Signature**

```ts
export declare const reduce: {
  <V, Z>(z: Z, f: (z: Z, v: V) => Z): <K>(self: HashMap<K, V>) => Z
  <K, V, Z>(self: HashMap<K, V>, z: Z, f: (z: Z, v: V) => Z): Z
}
```
