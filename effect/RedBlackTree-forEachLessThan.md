# forEachLessThan

Visit each node of the tree in order with key lower then max.

To import and use `forEachLessThan` from the "RedBlackTree" module:

ts
import \* as RedBlackTree from "effect/RedBlackTree"
// Can be accessed like this
RedBlackTree.forEachLessThan
undefined

**Signature**

```ts
export declare const forEachLessThan: {
  <K, V>(max: K, f: (key: K, value: V) => void): (self: RedBlackTree<K, V>) => void
  <K, V>(self: RedBlackTree<K, V>, max: K, f: (key: K, value: V) => void): void
}
```
