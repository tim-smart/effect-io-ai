Package: `effect`<br />
Module: `Stream`<br />

## Stream.peel

Runs a sink to peel off enough elements to produce a value and returns that
value with the remaining stream in a scope.

The returned stream is only valid within the scope.

**Example**

```ts
import { Console, Effect, Sink, Stream } from "effect"

const stream = Stream.fromArrays([1, 2, 3], [4, 5, 6])
const sink = Sink.take<number>(3)

const program = Effect.scoped(
  Effect.gen(function*() {
    const [peeled, rest] = yield* Stream.peel(stream, sink)
    const remaining = yield* Stream.runCollect(rest)
    yield* Console.log([peeled, remaining])
  })
)

Effect.runPromise(program)
// Output: [ [1, 2, 3], [4, 5, 6] ]
```

**Signature**

```ts
declare const peel: { <A2, A, E2, R2>(sink: Sink.Sink<A2, A, A, E2, R2>): <E, R>(self: Stream<A, E, R>) => Effect.Effect<[A2, Stream<A, E, never>], E2 | E, Scope.Scope | R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, sink: Sink.Sink<A2, A, A, E2, R2>): Effect.Effect<[A2, Stream<A, E, never>], E | E2, Scope.Scope | R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4335)

Since v2.0.0