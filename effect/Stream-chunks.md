## chunks

Exposes the underlying chunks of the stream as a stream of chunks of
elements.

**Signature**

```ts
declare const chunks: <A, E, R>(self: Stream<A, E, R>) => Stream<Chunk.Chunk<A>, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L957)

Since v2.0.0