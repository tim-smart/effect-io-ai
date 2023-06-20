# insert

Insert a new item into the tree.

To import and use `insert` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from '@effect/data/RedBlackTree'

// Can be accessed like this
RedBlackTree.insert
```

**Signature**

```ts
export declare const insert: {
  <K, V>(key: K, value: V): (self: RedBlackTree<K, V>) => RedBlackTree<K, V>
  <K, V>(self: RedBlackTree<K, V>, key: K, value: V): RedBlackTree<K, V>
}
```
