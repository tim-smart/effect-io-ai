# lessThanReversed

Returns an iterator that traverse entries in reverse order with keys less
than the specified key.

To import and use `lessThanReversed` from the "RedBlackTree" module:

ts
import \* as RedBlackTree from "effect/RedBlackTree"
// Can be accessed like this
RedBlackTree.lessThanReversed
undefined

**Signature**

```ts
export declare const lessThanReversed: {
  <K>(key: K): <V>(self: RedBlackTree<K, V>) => Iterable<[K, V]>
  <K, V>(self: RedBlackTree<K, V>, key: K): Iterable<[K, V]>
}
```
