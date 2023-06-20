# fromIterable

Constructs a new tree from an iterable of key-value pairs.

To import and use `fromIterable` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from '@effect/data/RedBlackTree'

// Can be accessed like this
RedBlackTree.fromIterable
```

**Signature**

```ts
export declare const fromIterable: <K, V>(ord: Order<K>) => (entries: Iterable<readonly [K, V]>) => RedBlackTree<K, V>
```
