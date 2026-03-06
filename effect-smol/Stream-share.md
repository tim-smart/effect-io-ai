Package: `effect`<br />
Module: `Stream`<br />

## Stream.share

Returns a new Stream that multicasts the original stream, subscribing when the first consumer starts.

The upstream continues running while there is at least one consumer and is finalized after the last one exits.
If `idleTimeToLive` is set, the upstream is kept alive for that duration so a later subscriber can continue from
the next element instead of restarting.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

Effect.runPromise(
  Effect.scoped(
    Effect.gen(function*() {
      const shared = yield* Stream.make(1, 2, 3).pipe(
        Stream.share({ capacity: 16 })
      )

      const first = yield* shared.pipe(Stream.take(1), Stream.runCollect)
      const second = yield* shared.pipe(Stream.take(1), Stream.runCollect)

      yield* Console.log([first, second])
    })
  )
)
// output: [[1], [1]]
```

**Signature**

```ts
declare const share: { (options: { readonly capacity: "unbounded"; readonly replay?: number | undefined; readonly idleTimeToLive?: Duration.Input | undefined; } | { readonly capacity: number; readonly strategy?: "sliding" | "dropping" | "suspend" | undefined; readonly replay?: number | undefined; readonly idleTimeToLive?: Duration.Input | undefined; }): <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<Stream<A, E>, never, Scope.Scope | R>; <A, E, R>(self: Stream<A, E, R>, options: { readonly capacity: "unbounded"; readonly replay?: number | undefined; readonly idleTimeToLive?: Duration.Input | undefined; } | { readonly capacity: number; readonly strategy?: "sliding" | "dropping" | "suspend" | undefined; readonly replay?: number | undefined; readonly idleTimeToLive?: Duration.Input | undefined; }): Effect.Effect<Stream<A, E>, never, Scope.Scope | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8155)

Since v2.0.0