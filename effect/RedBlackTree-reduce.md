# reduce

Reduce a state over the entries of the tree.

To import and use `reduce` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from "effect/RedBlackTree"
// Can be accessed like this
RedBlackTree.reduce
```

**Signature**

```ts
export declare const reduce: {
  <Z, V, K>(zero: Z, f: (accumulator: Z, value: V, key: K) => Z): (self: RedBlackTree<K, V>) => Z
  <Z, V, K>(self: RedBlackTree<K, V>, zero: Z, f: (accumulator: Z, value: V, key: K) => Z): Z
}
```
