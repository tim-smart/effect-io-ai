# lessThan

Returns an iterator that traverse entries in order with keys less than the
specified key.

To import and use `lessThan` from the "RedBlackTree" module:

ts
import \* as RedBlackTree from "effect/RedBlackTree"
// Can be accessed like this
RedBlackTree.lessThan
undefined

**Signature**

```ts
export declare const lessThan: {
  <K>(key: K): <V>(self: RedBlackTree<K, V>) => Iterable<[K, V]>
  <K, V>(self: RedBlackTree<K, V>, key: K): Iterable<[K, V]>
}
```
