# greaterThanEqualReversed

Returns an iterator that traverse entries in reverse order with keys greater
than or equal to the specified key.

To import and use `greaterThanEqualReversed` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from '@effect/data/RedBlackTree'

// Can be accessed like this
RedBlackTree.greaterThanEqualReversed
```

**Signature**

```ts
export declare const greaterThanEqualReversed: {
  <K>(key: K): <V>(self: RedBlackTree<K, V>) => Iterable<readonly [K, V]>
  <K, V>(self: RedBlackTree<K, V>, key: K): Iterable<readonly [K, V]>
}
```
