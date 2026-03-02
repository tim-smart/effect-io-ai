Package: `effect`<br />
Module: `Stream`<br />

## Stream.repeatElements

Repeats each element of the stream according to the provided schedule,
including the original emission.

**Example**

```ts
import { Console, Effect, Schedule, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.make("A", "B", "C").pipe(
    Stream.repeatElements(Schedule.recurs(1)),
    Stream.runCollect
  )
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ "A", "A", "B", "B", "C", "C" ]
```

**Signature**

```ts
declare const repeatElements: { <B, E2, R2>(schedule: Schedule.Schedule<B, unknown, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E | E2, R2 | R>; <A, E, R, B, E2, R2>(self: Stream<A, E, R>, schedule: Schedule.Schedule<B, unknown, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2620)

Since v2.0.0