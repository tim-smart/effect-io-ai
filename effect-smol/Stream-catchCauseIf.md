Package: `effect`<br />
Module: `Stream`<br />

## Stream.catchCauseIf

Recovers from stream failures by filtering the `Cause` and switching to a recovery stream.
Non-matching causes are re-emitted as failures.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Stream.catchSomeCause`

**Example**

```ts
import { Cause, Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const failingStream = Stream.fail("NetworkError")
  const recovered = Stream.catchCauseIf(
    failingStream,
    (cause) => Cause.hasFails(cause),
    (cause) => Stream.make(`Recovered: ${Cause.squash(cause)}`)
  )

  const output = yield* Stream.runCollect(recovered)
  yield* Console.log(output)
})

Effect.runPromise(program)
// Output: [ "Recovered: NetworkError" ]
```

**Signature**

```ts
declare const catchCauseIf: { <E, A2, E2, R2>(predicate: Predicate<Cause.Cause<E>>, f: (cause: Cause.Cause<E>) => Stream<A2, E2, R2>): <A, R>(self: Stream<A, E, R>) => Stream<A | A2, E | E2, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, predicate: Predicate<Cause.Cause<E>>, f: (cause: Cause.Cause<E>) => Stream<A2, E2, R2>): Stream<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L5421)

Since v4.0.0