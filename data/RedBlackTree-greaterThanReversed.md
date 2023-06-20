# greaterThanReversed

Returns an iterator that traverse entries in reverse order with keys greater
than the specified key.

To import and use `greaterThanReversed` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from '@effect/data/RedBlackTree'

// Can be accessed like this
RedBlackTree.greaterThanReversed
```

**Signature**

```ts
export declare const greaterThanReversed: {
  <K>(key: K): <V>(self: RedBlackTree<K, V>) => Iterable<readonly [K, V]>
  <K, V>(self: RedBlackTree<K, V>, key: K): Iterable<readonly [K, V]>
}
```
