Package: `effect`<br />
Module: `Stream`<br />

## Stream.repeat

Repeats the entire stream according to the provided schedule.

**Example**

```ts
import { Console, Effect, Schedule, Stream } from "effect"

const program = Effect.gen(function* () {
  const result = yield* Stream.make(1).pipe(
    Stream.repeat(Schedule.recurs(4)),
    Stream.runCollect
  )

  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ 1, 1, 1, 1, 1 ]
```

**Signature**

```ts
declare const repeat: { <B, E2, R2>(schedule: Schedule.Schedule<B, void, E2, R2> | (($: <SO, SE, SR>(_: Schedule.Schedule<SO, void, SE, SR>) => Schedule.Schedule<SO, void, SE, SR>) => Schedule.Schedule<B, void, E2, R2>)): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E | E2, R2 | R>; <A, E, R, B, E2, R2>(self: Stream<A, E, R>, schedule: Schedule.Schedule<B, void, E2, R2> | (($: <SO, SE, SR>(_: Schedule.Schedule<SO, void, SE, SR>) => Schedule.Schedule<SO, void, SE, SR>) => Schedule.Schedule<B, void, E2, R2>)): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2495)

Since v2.0.0