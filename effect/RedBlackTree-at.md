# at

Returns an iterator that points to the element at the specified index of the
tree.

**Note**: The iterator will run through elements in order.

To import and use `at` from the "RedBlackTree" module:

ts
import \* as RedBlackTree from "effect/RedBlackTree"
// Can be accessed like this
RedBlackTree.at
undefined

**Signature**

```ts
export declare const at: {
  (index: number): <K, V>(self: RedBlackTree<K, V>) => Iterable<[K, V]>
  <K, V>(self: RedBlackTree<K, V>, index: number): Iterable<[K, V]>
}
```
