Package: `effect`<br />
Module: `Stream`<br />

## Stream.bufferArray

Allows a faster producer to progress independently of a slower consumer by
buffering up to `capacity` chunks in a queue.

This combinator preserves chunking and is best with power-of-2 capacities.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Stream.bufferChunks`

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const result = yield* Stream.fromArrays([1, 2], [3, 4]).pipe(
    Stream.bufferArray({ capacity: 2 }),
    Stream.runCollect
  )
  yield* Console.log(result)
})

// Output: [ 1, 2, 3, 4 ]
```

**Signature**

```ts
declare const bufferArray: { (options: { readonly capacity: "unbounded"; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; }): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, options: { readonly capacity: "unbounded"; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; }): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4437)

Since v2.0.0