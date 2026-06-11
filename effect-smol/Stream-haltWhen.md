Package: `effect`<br />
Module: `Stream`<br />

## Stream.haltWhen

Stops a stream after the current element when an effect completes.

**When to use**

Use to stop before the next pull after an external signal completes.

**Details**

The effect is forked, its success value is discarded, and its failure fails
the stream.

**Gotchas**

This does not interrupt an in-progress pull. Use `interruptWhen` when
the stream should be interrupted immediately.

**Example** (Halting a stream after an effect completes)

```ts
import { Console, Deferred, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const halt = yield* Deferred.make<void>()
  const values = yield* Stream.fromArray([1, 2, 3]).pipe(
    Stream.tap((value) => value === 2 ? Deferred.succeed(halt, void 0) : Effect.void),
    Stream.haltWhen(Deferred.await(halt)),
    Stream.runCollect
  )
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output:
// [1, 2]
```

**Signature**

```ts
declare const haltWhen: { <X, E2, R2>(effect: Effect.Effect<X, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>; <A, E, R, X, E2, R2>(self: Stream<A, E, R>, effect: Effect.Effect<X, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9762)

Since v2.0.0