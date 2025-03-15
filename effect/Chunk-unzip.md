Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.unzip

Takes a `Chunk` of pairs and return two corresponding `Chunk`s.

Note: The function is reverse of `zip`.

**Signature**

```ts
declare const unzip: <A, B>(self: Chunk<readonly [A, B]>) => [Chunk<A>, Chunk<B>]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1197)

Since v2.0.0