# forEachGreaterThanEqual

Visit each node of the tree in order with key greater then or equal to max.

To import and use `forEachGreaterThanEqual` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from '@effect/data/RedBlackTree'

// Can be accessed like this
RedBlackTree.forEachGreaterThanEqual
```

**Signature**

```ts
export declare const forEachGreaterThanEqual: {
  <K, V>(min: K, f: (key: K, value: V) => void): (self: RedBlackTree<K, V>) => void
  <K, V>(self: RedBlackTree<K, V>, min: K, f: (key: K, value: V) => void): void
}
```
