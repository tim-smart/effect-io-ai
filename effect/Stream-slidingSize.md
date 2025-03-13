Package: `effect`<br />
Module: `Stream`<br />

## Stream.slidingSize

Like `sliding`, but with a configurable `stepSize` parameter.

**Signature**

```ts
declare const slidingSize: { (chunkSize: number, stepSize: number): <A, E, R>(self: Stream<A, E, R>) => Stream<Chunk.Chunk<A>, E, R>; <A, E, R>(self: Stream<A, E, R>, chunkSize: number, stepSize: number): Stream<Chunk.Chunk<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4637)

Since v2.0.0