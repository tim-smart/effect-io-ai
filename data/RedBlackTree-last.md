# last

Returns the last entry in the tree, if it exists.

To import and use `last` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from '@effect/data/RedBlackTree'

// Can be accessed like this
RedBlackTree.last
```

**Signature**

```ts
export declare const last: <K, V>(self: RedBlackTree<K, V>) => Option<readonly [K, V]>
```
