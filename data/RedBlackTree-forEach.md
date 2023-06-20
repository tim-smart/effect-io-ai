# forEach

Execute the specified function for each node of the tree, in order.

To import and use `forEach` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from '@effect/data/RedBlackTree'

// Can be accessed like this
RedBlackTree.forEach
```

**Signature**

```ts
export declare const forEach: {
  <K, V>(f: (key: K, value: V) => void): (self: RedBlackTree<K, V>) => void
  <K, V>(self: RedBlackTree<K, V>, f: (key: K, value: V) => void): void
}
```
