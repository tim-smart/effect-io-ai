# lessThanReversed

Returns an iterator that traverse entries in reverse order with keys less
than the specified key.

To import and use `lessThanReversed` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from '@effect/data/RedBlackTree'

// Can be accessed like this
RedBlackTree.lessThanReversed
```

**Signature**

```ts
export declare const lessThanReversed: {
  <K>(key: K): <V>(self: RedBlackTree<K, V>) => Iterable<readonly [K, V]>
  <K, V>(self: RedBlackTree<K, V>, key: K): Iterable<readonly [K, V]>
}
```
