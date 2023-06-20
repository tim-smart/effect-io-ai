# find

Finds all values in the tree associated with the specified key.

To import and use `find` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from '@effect/data/RedBlackTree'

// Can be accessed like this
RedBlackTree.find
```

**Signature**

```ts
export declare const find: {
  <K>(key: K): <V>(self: RedBlackTree<K, V>) => Chunk<V>
  <K, V>(self: RedBlackTree<K, V>, key: K): Chunk<V>
}
```
