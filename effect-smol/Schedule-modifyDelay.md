Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.modifyDelay

Returns a new `Schedule` that modifies the delay of the next recurrence
of the schedule using the specified effectual function.

**Example**

```ts
import { Console, Duration, Effect, Schedule } from "effect"

// Modify delays based on output - increase delay on high iteration counts
const adaptiveDelay = Schedule.recurs(10).pipe(
  Schedule.modifyDelay((output, delay) => {
    // Double the delay if we're seeing high iteration counts
    return Effect.succeed(output > 5 ? Duration.times(delay, 2) : delay)
  })
)

const program = Effect.gen(function*() {
  let counter = 0
  yield* Effect.repeat(
    Effect.gen(function*() {
      counter++
      yield* Console.log(`Attempt ${counter}`)
      return counter
    }),
    adaptiveDelay.pipe(Schedule.take(8))
  )
})
```

**Signature**

```ts
declare const modifyDelay: { <Output, Error2 = never, Env2 = never>(f: (output: Output, delay: Duration.Duration) => Effect<Duration.Input, Error2, Env2>): <Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input, Error | Error2, Env | Env2>; <Output, Input, Error, Env, Error2 = never, Env2 = never>(self: Schedule<Output, Input, Error, Env>, f: (output: Output, delay: Duration.Input) => Effect<Duration.Input, Error2, Env2>): Schedule<Output, Input, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L2313)

Since v2.0.0