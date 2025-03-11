## make

Constructs a new `RedBlackTree` from the specified entries.

**Signature**

```ts
declare const make: <K>(ord: Order<K>) => <Entries extends Array<readonly [K, any]>>(...entries: Entries) => RedBlackTree<K, Entries[number] extends readonly [any, infer V] ? V : never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RedBlackTree.ts#L87)

Since v2.0.0