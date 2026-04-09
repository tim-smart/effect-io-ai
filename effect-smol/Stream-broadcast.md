Package: `effect`<br />
Module: `Stream`<br />

## Stream.broadcast

Creates a PubSub-backed stream that multicasts the source to all subscribers.

The returned stream is scoped and uses the provided PubSub capacity and replay settings.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.scoped(
  Effect.gen(function* () {
    const broadcasted = yield* Stream.broadcast(Stream.fromArray([1, 2, 3]), {
      capacity: 8,
      replay: 3
    })

    const [left, right] = yield* Effect.all([
      Stream.runCollect(broadcasted),
      Stream.runCollect(broadcasted)
    ], { concurrency: "unbounded" })

    yield* Console.log([left, right])
  })
)

Effect.runPromise(program)
// Output: [[1, 2, 3], [1, 2, 3]]
```

**Signature**

```ts
declare const broadcast: { (options: { readonly capacity: "unbounded"; readonly replay?: number | undefined; } | { readonly capacity: number; readonly strategy?: "sliding" | "dropping" | "suspend" | undefined; readonly replay?: number | undefined; }): <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<Stream<A, E>, never, Scope.Scope | R>; <A, E, R>(self: Stream<A, E, R>, options: { readonly capacity: "unbounded"; readonly replay?: number | undefined; } | { readonly capacity: number; readonly strategy?: "sliding" | "dropping" | "suspend" | undefined; readonly replay?: number | undefined; }): Effect.Effect<Stream<A, E>, never, Scope.Scope | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8251)

Since v2.0.0