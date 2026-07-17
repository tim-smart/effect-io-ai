Package: `effect`<br />
Module: `Stream`<br />

## Stream.rechunk

Groups the stream into arrays of the specified size, preserving element order.

**Details**

The size is clamped to at least 1.

**Example** (Rechunking stream elements)

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const result = yield* Stream.make(1, 2, 3, 4, 5).pipe(
    Stream.rechunk(2),
    Stream.chunks,
    Stream.runCollect
  )
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ [ 1, 2 ], [ 3, 4 ], [ 5 ] ]
```

**Signature**

```ts
declare const rechunk: { (size: number): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, size: number): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L7032)

Since v2.0.0