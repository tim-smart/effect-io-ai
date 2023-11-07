# removeFirst

Removes the entry with the specified key, if it exists.

To import and use `removeFirst` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from 'effect/RedBlackTree'

// Can be accessed like this
RedBlackTree.removeFirst
```

**Signature**

```ts
export declare const removeFirst: {
  <K>(key: K): <V>(self: RedBlackTree<K, V>) => RedBlackTree<K, V>
  <K, V>(self: RedBlackTree<K, V>, key: K): RedBlackTree<K, V>
}
```
