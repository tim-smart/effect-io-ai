## makeBy

Return a Chunk of length n with element i initialized with f(i).

**Note**. `n` is normalized to an integer >= 1.

**Signature**

```ts
declare const makeBy: { <A>(f: (i: number) => A): (n: number) => NonEmptyChunk<A>; <A>(n: number, f: (i: number) => A): NonEmptyChunk<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1295)

Since v2.0.0