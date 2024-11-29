# empty

Creates an empty `RedBlackTree`.

To import and use `empty` from the "RedBlackTree" module:

ts
import \* as RedBlackTree from "effect/RedBlackTree"
// Can be accessed like this
RedBlackTree.empty
undefined

**Signature**

```ts
export declare const empty: <K, V = never>(ord: Order<K>) => RedBlackTree<K, V>
```
