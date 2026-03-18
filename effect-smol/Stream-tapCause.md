Package: `effect`<br />
Module: `Stream`<br />

## Stream.tapCause

Runs an effect when the stream fails without changing its values or error,
unless the tap effect itself fails.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Stream.tapErrorCause`

**Example**

```ts
import { Cause, Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2).pipe(
  Stream.concat(Stream.fail("boom")),
  Stream.tapCause((cause) => Console.log(Cause.isReason(cause))),
  Stream.catch(() => Stream.succeed(0))
)

const program = Effect.gen(function* () {
  const result = yield* Stream.runCollect(stream)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: true
// Output: [ 1, 2, 0 ]
```

**Signature**

```ts
declare const tapCause: { <E, A2, E2, R2>(f: (cause: Cause.Cause<E>) => Effect.Effect<A2, E2, R2>): <A, R>(self: Stream<A, E, R>) => Stream<A, E | E2, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, f: (cause: Cause.Cause<E>) => Effect.Effect<A2, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4568)

Since v4.0.0