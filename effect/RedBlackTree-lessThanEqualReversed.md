# lessThanEqualReversed

Returns an iterator that traverse entries in reverse order with keys less
than or equal to the specified key.

To import and use `lessThanEqualReversed` from the "RedBlackTree" module:

ts
import \* as RedBlackTree from "effect/RedBlackTree"
// Can be accessed like this
RedBlackTree.lessThanEqualReversed
undefined

**Signature**

```ts
export declare const lessThanEqualReversed: {
  <K>(key: K): <V>(self: RedBlackTree<K, V>) => Iterable<[K, V]>
  <K, V>(self: RedBlackTree<K, V>, key: K): Iterable<[K, V]>
}
```
