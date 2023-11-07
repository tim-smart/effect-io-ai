# findAll

Finds all values in the tree associated with the specified key.

To import and use `findAll` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from 'effect/RedBlackTree'

// Can be accessed like this
RedBlackTree.findAll
```

**Signature**

```ts
export declare const findAll: {
  <K>(key: K): <V>(self: RedBlackTree<K, V>) => Chunk<V>
  <K, V>(self: RedBlackTree<K, V>, key: K): Chunk<V>
}
```
