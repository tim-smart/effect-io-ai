Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.findLastIndex

Return the last index for which a predicate holds.

**Signature**

```ts
declare const findLastIndex: { <A>(predicate: Predicate<A>): (self: Chunk<A>) => Option<number>; <A>(self: Chunk<A>, predicate: Predicate<A>): Option<number>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1381)

Since v2.0.0