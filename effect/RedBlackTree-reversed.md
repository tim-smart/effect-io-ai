# reversed

Traverse the tree in reverse order.

To import and use `reversed` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from 'effect/RedBlackTree'

// Can be accessed like this
RedBlackTree.reversed
```

**Signature**

```ts
export declare const reversed: <K, V>(self: RedBlackTree<K, V>) => Iterable<readonly [K, V]>
```
