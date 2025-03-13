Package: `effect`<br />
Module: `Stream`<br />

## Stream.sliding

Emits a sliding window of `n` elements.

```ts
import { pipe, Stream } from "effect"

pipe(
  Stream.make(1, 2, 3, 4),
  Stream.sliding(2),
  Stream.runCollect
)
// => Chunk(Chunk(1, 2), Chunk(2, 3), Chunk(3, 4))
```

**Signature**

```ts
declare const sliding: { (chunkSize: number): <A, E, R>(self: Stream<A, E, R>) => Stream<Chunk.Chunk<A>, E, R>; <A, E, R>(self: Stream<A, E, R>, chunkSize: number): Stream<Chunk.Chunk<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4626)

Since v2.0.0