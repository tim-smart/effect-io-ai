Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.unsafeLast

Returns the last element of this chunk.

It will throw an error if the chunk is empty.

**Signature**

```ts
declare const unsafeLast: <A>(self: Chunk<A>) => A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L871)

Since v2.0.0