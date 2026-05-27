Package: `effect`<br />
Module: `Stream`<br />

## Stream.buffer

Buffers up to `capacity` elements so a faster producer can progress
independently of a slower consumer.

**Details**

Finite buffers use the configured queue strategy: `"suspend"` applies
backpressure, while `"dropping"` and `"sliding"` may discard elements when
the buffer is full. This combinator destroys chunking; use `Stream.rechunk`
afterward if you need fixed chunk sizes.

**Example** (Buffering stream elements)

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.make(1, 2, 3).pipe(
    Stream.buffer({ capacity: 1 }),
    Stream.runCollect
  )
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const buffer: { (options: { readonly capacity: "unbounded"; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; }): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, options: { readonly capacity: "unbounded"; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; }): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4834)

Since v2.0.0