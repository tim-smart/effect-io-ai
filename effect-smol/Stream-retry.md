Package: `effect`<br />
Module: `Stream`<br />

## Stream.retry

When the stream fails, retry it according to the given schedule.

This retries the entire stream, so will re-execute all of the stream's
acquire operations.

The schedule is reset as soon as the first element passes through the
stream again.

**Example**

```ts
import { Console, Effect, Schedule, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.make(1).pipe(
    Stream.concat(Stream.fail("boom")),
    Stream.retry(Schedule.recurs(1)),
    Stream.take(2),
    Stream.runCollect
  )

  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 1 ]
```

**Signature**

```ts
declare const retry: { <E, X, E2, R2>(policy: Schedule.Schedule<X, NoInfer<E>, E2, R2> | (($: <SO, SE, SR>(_: Schedule.Schedule<SO, NoInfer<E>, SE, SR>) => Schedule.Schedule<SO, E, SE, SR>) => Schedule.Schedule<X, NoInfer<E>, E2, R2>)): <A, R>(self: Stream<A, E, R>) => Stream<A, E | E2, R2 | R>; <A, E, R, X, E2, R2>(self: Stream<A, E, R>, policy: Schedule.Schedule<X, NoInfer<E>, E2, R2> | (($: <SO, SE, SR>(_: Schedule.Schedule<SO, NoInfer<E>, SE, SR>) => Schedule.Schedule<SO, E, SE, SR>) => Schedule.Schedule<X, NoInfer<E>, E2, R2>)): Stream<A, E | E2, R2 | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L5619)

Since v2.0.0