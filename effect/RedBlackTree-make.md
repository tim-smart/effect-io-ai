# make

Constructs a new `RedBlackTree` from the specified entries.

To import and use `make` from the "RedBlackTree" module:

ts
import \* as RedBlackTree from "effect/RedBlackTree"
// Can be accessed like this
RedBlackTree.make
undefined

**Signature**

```ts
export declare const make: <K>(
  ord: Order<K>
) => <Entries extends Array<readonly [K, any]>>(
  ...entries: Entries
) => RedBlackTree<K, Entries[number] extends readonly [any, infer V] ? V : never>
```
