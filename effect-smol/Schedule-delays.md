Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.delays

Returns a new schedule that outputs the delay between each occurence.

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// Extract delays from an exponential backoff schedule
const exponentialDelays = Schedule.delays(
  Schedule.exponential("100 millis").pipe(Schedule.take(5))
)

const delayProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Task executed")
      return "task result"
    }),
    exponentialDelays.pipe(
      Schedule.tapOutput((delay) =>
        Console.log(`Waiting ${delay} before next execution`)
      )
    )
  )
})

// Monitor delays from a fibonacci schedule
const fibonacciDelays = Schedule.delays(
  Schedule.fibonacci("200 millis").pipe(Schedule.take(8))
)

const fibDelayProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Console.log("Fibonacci task"),
    fibonacciDelays.pipe(
      Schedule.tapOutput((delay) => Console.log(`Fibonacci delay: ${delay}`))
    )
  )
})

// Extract delays for analysis or logging
const analyzeDelays = Schedule.delays(
  Schedule.spaced("1 second").pipe(Schedule.take(3))
).pipe(
  Schedule.tapOutput((delay) =>
    Effect.gen(function*() {
      yield* Console.log(`Recorded delay: ${delay}`)
      // In real applications, might send to metrics system
    })
  )
)

// Combine delays with other schedules for complex timing
const adaptiveSchedule = Schedule.unfold(100, (delay) => Effect.succeed(delay * 1.5)).pipe(
  Schedule.take(6)
)

const adaptiveDelays = Schedule.delays(adaptiveSchedule)

const adaptiveProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Adaptive task execution")
      return Date.now()
    }),
    adaptiveDelays.pipe(
      Schedule.tapOutput((delay) => Console.log(`Adaptive delay: ${delay}`))
    )
  )
})

// Use delays to implement custom timing logic
const customTimingSchedule = Schedule.delays(
  Schedule.exponential("50 millis").pipe(Schedule.take(4))
).pipe(
  Schedule.map((delay) => Effect.succeed(`Next execution in ${delay}`)),
  Schedule.tapOutput((message) => Console.log(message))
)
```

**Signature**

```ts
declare const delays: <Out, In, E, R>(self: Schedule<Out, In, E, R>) => Schedule<Duration.Duration, In, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L1553)

Since v2.0.0