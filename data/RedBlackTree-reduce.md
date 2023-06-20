# reduce

Reduce a state over the map entries.

To import and use `reduce` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from '@effect/data/RedBlackTree'

// Can be accessed like this
RedBlackTree.reduce
```

**Signature**

```ts
export declare const reduce: {
  <Z, V>(zero: Z, f: (accumulator: Z, value: V) => Z): <K>(self: RedBlackTree<K, V>) => Z
  <Z, K, V>(self: RedBlackTree<K, V>, zero: Z, f: (accumulator: Z, value: V) => Z): Z
}
```
