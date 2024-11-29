# last

Returns the last entry in the tree, if it exists.

To import and use `last` from the "RedBlackTree" module:

ts
import \* as RedBlackTree from "effect/RedBlackTree"
// Can be accessed like this
RedBlackTree.last
undefined

**Signature**

```ts
export declare const last: <K, V>(self: RedBlackTree<K, V>) => Option<[K, V]>
```
