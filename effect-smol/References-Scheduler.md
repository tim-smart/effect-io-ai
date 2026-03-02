Package: `effect`<br />
Module: `References`<br />

## References.Scheduler

Reference for the current scheduler implementation used by the Effect runtime.
Controls how Effects are scheduled and executed.

**Example**

```ts
import { Effect, References, Scheduler } from "effect"

const customScheduling = Effect.gen(function*() {
  // Get current scheduler (default is MixedScheduler)
  const current = yield* References.Scheduler
  console.log(current) // MixedScheduler instance

  // Use a custom scheduler
  yield* Effect.provideService(
    Effect.gen(function*() {
      const scheduler = yield* References.Scheduler
      console.log(scheduler) // Custom scheduler instance

      // Effects will use the custom scheduler in this context
      yield* Effect.log("Using custom scheduler")
    }),
    References.Scheduler,
    new Scheduler.MixedScheduler()
  )
})
```

**Signature**

```ts
declare const Scheduler: ServiceMap.Reference<Scheduler>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L122)

Since v4.0.0