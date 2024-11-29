# has

Finds the item with key, if it exists.

To import and use `has` from the "RedBlackTree" module:

ts
import \* as RedBlackTree from "effect/RedBlackTree"
// Can be accessed like this
RedBlackTree.has
undefined

**Signature**

```ts
export declare const has: {
  <K>(key: K): <V>(self: RedBlackTree<K, V>) => boolean
  <K, V>(self: RedBlackTree<K, V>, key: K): boolean
}
```
