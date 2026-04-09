Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromEffectSchedule

Creates a stream from an effect producing a value of type `A`, which is
repeated using the specified schedule.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Stream.repeatEffectWithSchedule`

**Example**

```ts
import { Console, Effect, Schedule, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.fromEffectSchedule(
    Effect.succeed("ping"),
    Schedule.recurs(2)
  )
  const result = yield* Stream.runCollect(stream)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ "ping", "ping", "ping" ]
```

**Signature**

```ts
declare const fromEffectSchedule: <A, E, R, X, AS extends A, ES, RS>(effect: Effect.Effect<A, E, R>, schedule: Schedule.Schedule<X, AS, ES, RS>) => Stream<A, E | ES, R | RS>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L514)

Since v2.0.0