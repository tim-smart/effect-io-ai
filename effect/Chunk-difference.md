Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.difference

Creates a `Chunk` of values not included in the other given `Chunk`.
The order and references of result values are determined by the first `Chunk`.

**Signature**

```ts
declare const difference: { <A>(that: Chunk<A>): (self: Chunk<A>) => Chunk<A>; <A>(self: Chunk<A>, that: Chunk<A>): Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1468)

Since v3.2.0