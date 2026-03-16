Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.Fiber

A runtime fiber is a lightweight thread that executes Effects. Fibers are
the unit of concurrency in Effect. They provide a way to run multiple
Effects concurrently while maintaining structured concurrency and
cancellation safety.

**Example**

```ts
import { Effect, Fiber } from "effect"

const program = Effect.gen(function*() {
  // Fork an effect to run in a new fiber
  const fiber = yield* Effect.forkChild(Effect.succeed(42))

  // Wait for the fiber to complete and get its result
  const result = yield* Fiber.await(fiber)
  console.log(result) // Exit.succeed(42)

  return result
})
```

**Signature**

```ts
export interface Fiber<out A, out E = never> extends Pipeable {
  readonly [TypeId]: Fiber.Variance<A, E>

  readonly id: number
  readonly currentOpCount: number
  readonly getRef: <A>(ref: ServiceMap.Reference<A>) => A
  readonly services: ServiceMap.ServiceMap<never>
  setServices(services: ServiceMap.ServiceMap<never>): void
  readonly currentScheduler: Scheduler
  readonly currentDispatcher: SchedulerDispatcher
  readonly currentSpan?: AnySpan | undefined
  readonly currentLogLevel: LogLevel
  readonly minimumLogLevel: LogLevel
  readonly currentStackFrame?: StackFrame | undefined
  readonly maxOpsBeforeYield: number
  readonly currentPreventYield: boolean
  readonly addObserver: (cb: (exit: Exit<A, E>) => void) => () => void
  readonly interruptUnsafe: (
    fiberId?: number | undefined,
    annotations?: ServiceMap.ServiceMap<never> | undefined
  ) => void
  readonly pollUnsafe: () => Exit<A, E> | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Fiber.ts#L117)

Since v2.0.0