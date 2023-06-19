# make

Constructs a new `RedBlackTree` from the specified entries.

Part of the `RedBlackTree` module, imported from `@effect/data/RedBlackTree`.

**Signature**

```ts
export declare const make: <K>(
  ord: Order<K>
) => <Entries extends (readonly [K, any])[]>(
  ...entries: Entries
) => RedBlackTree<K, Entries[number] extends readonly [any, infer V] ? V : never>
```
