# reduceWithIndex

Reduce a state over the entries of the tree.

To import and use `reduceWithIndex` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from '@effect/data/RedBlackTree'

// Can be accessed like this
RedBlackTree.reduceWithIndex
```

**Signature**

```ts
export declare const reduceWithIndex: {
  <Z, V, K>(zero: Z, f: (accumulator: Z, value: V, key: K) => Z): (self: RedBlackTree<K, V>) => Z
  <Z, V, K>(self: RedBlackTree<K, V>, zero: Z, f: (accumulator: Z, value: V, key: K) => Z): Z
}
```
