# findFirst

Finds the value in the tree associated with the specified key, if it exists.

To import and use `findFirst` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from '@effect/data/RedBlackTree'

// Can be accessed like this
RedBlackTree.findFirst
```

**Signature**

```ts
export declare const findFirst: {
  <K>(key: K): <V>(self: RedBlackTree<K, V>) => Option<V>
  <K, V>(self: RedBlackTree<K, V>, key: K): Option<V>
}
```
