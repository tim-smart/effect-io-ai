## accumulateChunks

Re-chunks the elements of the stream by accumulating each underlying chunk.

**Signature**

```ts
declare const accumulateChunks: <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L189)

Since v2.0.0