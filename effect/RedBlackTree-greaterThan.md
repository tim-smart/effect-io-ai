# greaterThan

Returns an iterator that traverse entries in order with keys greater than the
specified key.

To import and use `greaterThan` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from "effect/RedBlackTree"
// Can be accessed like this
RedBlackTree.greaterThan
```

**Signature**

```ts
export declare const greaterThan: {
  <K>(key: K): <V>(self: RedBlackTree<K, V>) => Iterable<[K, V]>
  <K, V>(self: RedBlackTree<K, V>, key: K): Iterable<[K, V]>
}
```
