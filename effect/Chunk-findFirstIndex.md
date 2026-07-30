Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.findFirstIndex

Return the first index for which a predicate holds.

**Signature**

```ts
declare const findFirstIndex: { <A>(predicate: Predicate<A>): (self: Chunk<A>) => Option<number>; <A>(self: Chunk<A>, predicate: Predicate<A>): Option<number>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1378)

Since v2.0.0