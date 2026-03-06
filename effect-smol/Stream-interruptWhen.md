Package: `effect`<br />
Module: `Stream`<br />

## Stream.interruptWhen

Interrupts the evaluation of this stream when the provided effect
completes. The given effect will be forked as part of this stream, and its
success will be discarded. This combinator will also interrupt any
in-progress element being pulled from upstream.

If the effect completes with a failure before the stream completes, the
returned stream will emit that failure.

**Example**

```ts
import { Console, Deferred, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const interrupt = yield* Deferred.make<void>()
  const stream = Stream.make(1, 2, 3).pipe(
    Stream.tap((value) =>
      value === 2
        ? Deferred.succeed(interrupt, void 0)
        : Effect.void
    ),
    Stream.interruptWhen(Deferred.await(interrupt))
  )

  const result = yield* Stream.runCollect(stream)
  yield* Console.log(result)
})

Effect.runPromise(program)
// => [1, 2]
```

**Signature**

```ts
declare const interruptWhen: { <X, E2, R2>(effect: Effect.Effect<X, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>; <A, E, R, X, E2, R2>(self: Stream<A, E, R>, effect: Effect.Effect<X, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8875)

Since v2.0.0