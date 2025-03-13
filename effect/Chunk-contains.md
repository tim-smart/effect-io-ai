Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.contains

Returns a function that checks if a `Chunk` contains a given value using the default `Equivalence`.

**Signature**

```ts
declare const contains: { <A>(a: A): (self: Chunk<A>) => boolean; <A>(self: Chunk<A>, a: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1319)

Since v2.0.0