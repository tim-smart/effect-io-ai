# fromIterable

Creates a new `RedBlackTree` from an iterable collection of key/value pairs.

To import and use `fromIterable` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from "effect/RedBlackTree"
// Can be accessed like this
RedBlackTree.fromIterable
```

**Signature**

```ts
export declare const fromIterable: {
  <B>(ord: Order<B>): <K extends B, V>(entries: Iterable<readonly [K, V]>) => RedBlackTree<K, V>
  <K extends B, V, B>(entries: Iterable<readonly [K, V]>, ord: Order<B>): RedBlackTree<K, V>
}
```
