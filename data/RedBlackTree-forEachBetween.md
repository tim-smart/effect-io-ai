# forEachBetween

Visit each node of the tree in order with key lower than max and greater
than or equal to min.

To import and use `forEachBetween` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from '@effect/data/RedBlackTree'

// Can be accessed like this
RedBlackTree.forEachBetween
```

**Signature**

```ts
export declare const forEachBetween: {
  <K, V>(options: { readonly min: K; readonly max: K; readonly body: (key: K, value: V) => void }): (
    self: RedBlackTree<K, V>
  ) => void
  <K, V>(
    self: RedBlackTree<K, V>,
    options: { readonly min: K; readonly max: K; readonly body: (key: K, value: V) => void }
  ): void
}
```
