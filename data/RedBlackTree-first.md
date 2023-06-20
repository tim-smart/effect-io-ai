# first

Returns the first entry in the tree, if it exists.

To import and use `first` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from '@effect/data/RedBlackTree'

// Can be accessed like this
RedBlackTree.first
```

**Signature**

```ts
export declare const first: <K, V>(self: RedBlackTree<K, V>) => Option<readonly [K, V]>
```
