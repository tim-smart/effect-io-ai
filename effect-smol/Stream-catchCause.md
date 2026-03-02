Package: `effect`<br />
Module: `Stream`<br />

## Stream.catchCause

Switches over to the stream produced by the provided function in case this
one fails. Allows recovery from all causes of failure, including
interruption if the stream is uninterruptible.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Stream.catchAllCause`

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2).pipe(
  Stream.concat(Stream.fail("Oops!")),
  Stream.concat(Stream.make(3, 4))
)

const recovered = stream.pipe(
  Stream.catchCause(() => Stream.make(999))
)

const program = Effect.gen(function*() {
  const values = yield* Stream.runCollect(recovered)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 999 ]
```

**Signature**

```ts
declare const catchCause: { <E, A2, E2, R2>(f: (cause: Cause.Cause<E>) => Stream<A2, E2, R2>): <A, R>(self: Stream<A, E, R>) => Stream<A | A2, E2, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, f: (cause: Cause.Cause<E>) => Stream<A2, E2, R2>): Stream<A | A2, E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4495)

Since v4.0.0