Package: `effect`<br />
Module: `Stream`<br />

## Stream.onError

Runs the provided effect when the stream fails, passing the failure cause.

Note: Unlike `Effect.onError` there is no guarantee that the provided
effect will not be interrupted.

**Example**

```ts
import { Cause, Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.make(1, 2, 3).pipe(
    Stream.concat(Stream.fail("boom")),
    Stream.onError((cause) => Console.log(`Stream failed: ${Cause.squash(cause)}`))
  )

  yield* Stream.runCollect(stream)
})

Effect.runPromiseExit(program)
// Output:
// Stream failed: boom
```

**Signature**

```ts
declare const onError: { <E, X, R2>(cleanup: (cause: Cause.Cause<E>) => Effect.Effect<X, never, R2>): <A, R>(self: Stream<A, E, R>) => Stream<A, E, R2 | R>; <A, E, R, X, R2>(self: Stream<A, E, R>, cleanup: (cause: Cause.Cause<E>) => Effect.Effect<X, never, R2>): Stream<A, E, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8993)

Since v2.0.0