Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.unfold

Creates a schedule that unfolds a state by repeatedly applying a function,
outputting the current state and computing the next state.

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// Counter schedule that increments by 1 each time
const counterSchedule = Schedule.unfold(0, (n) => Effect.succeed(n + 1))
// Outputs: 0, 1, 2, 3, 4, 5, ...

const countingProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Task executed")
      return "done"
    }),
    counterSchedule.pipe(
      Schedule.take(5),
      Schedule.tapOutput((count) => Console.log(`Count: ${count}`))
    )
  )
})

// Fibonacci sequence schedule
const fibonacciSchedule = Schedule.unfold(
  [0, 1] as [number, number],
  ([a, b]) => Effect.succeed([b, a + b] as [number, number])
)
// Outputs: [0,1], [1,1], [1,2], [2,3], [3,5], [5,8], ...

const fibProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Console.log("Fibonacci step"),
    fibonacciSchedule.pipe(
      Schedule.take(8),
      Schedule.tapOutput(([a, b]) => Console.log(`Fib: ${a}, next: ${b}`))
    )
  )
})

// Effectful unfold - exponential backoff with state
const exponentialState = Schedule.unfold(
  100,
  (delayMs) =>
    Effect.gen(function*() {
      yield* Console.log(`Current delay: ${delayMs}ms`)
      return Math.min(delayMs * 2, 5000) // Cap at 5 seconds
    })
)

// Random jitter schedule
const jitteredSchedule = Schedule.unfold(
  1000,
  (baseDelay) =>
    Effect.gen(function*() {
      const jitter = Math.random() * 200 - 100 // ±100ms jitter
      const nextDelay = Math.max(100, baseDelay + jitter)
      yield* Console.log(`Jittered delay: ${nextDelay.toFixed(0)}ms`)
      return nextDelay
    })
)

// State machine schedule
type State = "init" | "warming" | "active" | "cooling"
const stateMachineSchedule = Schedule.unfold("init" as State, (state) => {
  switch (state) {
    case "init":
      return Effect.succeed("warming" as State)
    case "warming":
      return Effect.succeed("active" as State)
    case "active":
      return Effect.succeed("cooling" as State)
    case "cooling":
      return Effect.succeed("active" as State)
  }
})

const stateMachineProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("State machine step")
      return "step"
    }),
    stateMachineSchedule.pipe(
      Schedule.take(10),
      Schedule.tapOutput((state) => Console.log(`State: ${state}`))
    )
  )
})
```

**Signature**

```ts
declare const unfold: <State, Error = never, Env = never>(initial: State, next: (state: State) => Effect<State, Error, Env>) => Schedule<State, unknown, Error, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L3089)

Since v2.0.0