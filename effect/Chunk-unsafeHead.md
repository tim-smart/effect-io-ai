Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.unsafeHead

Returns the first element of this chunk.

It will throw an error if the chunk is empty.

**Signature**

```ts
declare const unsafeHead: <A>(self: Chunk<A>) => A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L843)

Since v2.0.0