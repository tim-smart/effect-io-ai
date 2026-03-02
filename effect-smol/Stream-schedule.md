Package: `effect`<br />
Module: `Stream`<br />

## Stream.schedule

Spaces the stream's elements according to the provided `schedule`.

**Example**

```ts
import { Console, Effect, Schedule, Stream } from "effect"

const program = Effect.gen(function*() {
  const result = yield* Stream.make(1, 2, 3).pipe(
    Stream.schedule(Schedule.spaced("10 millis")),
    Stream.runCollect
  )

  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const schedule: { <X, E2, R2, A>(schedule: Schedule.Schedule<X, NoInfer<A>, E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<A, E | E2, R2 | R>; <A, E, R, X, E2, R2>(self: Stream<A, E, R>, schedule: Schedule.Schedule<X, NoInfer<A>, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2552)

Since v2.0.0