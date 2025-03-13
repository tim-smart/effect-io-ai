Package: `effect`<br />
Module: `Stream`<br />

## Stream.flattenChunks

Submerges the chunks carried by this stream into the stream's structure,
while still preserving them.

**Signature**

```ts
declare const flattenChunks: <A, E, R>(self: Stream<Chunk.Chunk<A>, E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1818)

Since v2.0.0