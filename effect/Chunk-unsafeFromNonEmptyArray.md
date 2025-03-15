Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.unsafeFromNonEmptyArray

Wraps an array into a chunk without copying, unsafe on mutable arrays

**Signature**

```ts
declare const unsafeFromNonEmptyArray: <A>(self: NonEmptyReadonlyArray<A>) => NonEmptyChunk<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L398)

Since v2.0.0