Package: `effect`<br />
Module: `Stream`<br />

## Stream.haltWhen

Halts evaluation after the current element once the provided effect completes; the effect is forked, its success is discarded, failures fail the stream, and it does not interrupt an in-progress pull (use `interruptWhen` for that).

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8991)

Since v2.0.0