# getAt

Returns the element at the specified index within the tree or `None` if the
specified index does not exist.

To import and use `getAt` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from '@effect/data/RedBlackTree'

// Can be accessed like this
RedBlackTree.getAt
```

**Signature**

```ts
export declare const getAt: {
  (index: number): <K, V>(self: RedBlackTree<K, V>) => Option<readonly [K, V]>
  <K, V>(self: RedBlackTree<K, V>, index: number): Option<readonly [K, V]>
}
```
