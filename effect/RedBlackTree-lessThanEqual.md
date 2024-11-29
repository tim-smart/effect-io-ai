# lessThanEqual

Returns an iterator that traverse entries in order with keys less than or
equal to the specified key.

To import and use `lessThanEqual` from the "RedBlackTree" module:

ts
import \* as RedBlackTree from "effect/RedBlackTree"
// Can be accessed like this
RedBlackTree.lessThanEqual
undefined

**Signature**

```ts
export declare const lessThanEqual: {
  <K>(key: K): <V>(self: RedBlackTree<K, V>) => Iterable<[K, V]>
  <K, V>(self: RedBlackTree<K, V>, key: K): Iterable<[K, V]>
}
```
