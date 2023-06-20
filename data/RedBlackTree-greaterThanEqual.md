# greaterThanEqual

Returns an iterator that traverse entries in order with keys greater than or
equal to the specified key.

To import and use `greaterThanEqual` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from '@effect/data/RedBlackTree'

// Can be accessed like this
RedBlackTree.greaterThanEqual
```

**Signature**

```ts
export declare const greaterThanEqual: {
  <K>(key: K): <V>(self: RedBlackTree<K, V>) => Iterable<readonly [K, V]>
  <K, V>(self: RedBlackTree<K, V>, key: K): Iterable<readonly [K, V]>
}
```
