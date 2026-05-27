Package: `effect`<br />
Module: `Stream`<br />

## Stream.broadcastN

Fan out the stream, producing a fixed-size tuple of streams that each emit
the same elements as the source stream.

**Details**

The source stream starts after all downstream streams have been subscribed.
With the default suspend strategy, the source can only advance `capacity`
chunks ahead of the slowest downstream stream. If a downstream stream is
interrupted, it unsubscribes from the broadcast so it no longer contributes
backpressure.

**Example** (Broadcasting to two consumers)

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.scoped(
  Effect.gen(function*() {
    const [left, right] = yield* Stream.make(1, 2, 3).pipe(
      Stream.broadcastN({ n: 2, capacity: 8 })
    )

    const values = yield* Effect.all([
      Stream.runCollect(left),
      Stream.runCollect(right)
    ], { concurrency: "unbounded" })

    yield* Console.log(values)
  })
)

Effect.runPromise(program)
// Output: [[1, 2, 3], [1, 2, 3]]
```

**Signature**

```ts
declare const broadcastN: { <const N extends number>(options: { readonly n: N; readonly capacity: "unbounded"; readonly replay?: number | undefined; } | { readonly n: N; readonly capacity: number; readonly strategy?: "sliding" | "dropping" | "suspend" | undefined; readonly replay?: number | undefined; }): <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<TupleOf<N, Stream<A, E>>, never, Scope.Scope | R>; <A, E, R, const N extends number>(self: Stream<A, E, R>, options: { readonly n: N; readonly capacity: "unbounded"; readonly replay?: number | undefined; } | { readonly capacity: number; readonly n: N; readonly strategy?: "sliding" | "dropping" | "suspend" | undefined; readonly replay?: number | undefined; }): Effect.Effect<TupleOf<N, Stream<A, E>>, never, Scope.Scope | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8735)

Since v4.0.0