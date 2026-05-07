Package: `effect`<br />
Module: `Effect`<br />

## Effect.RunOptions

Configuration options for running Effect programs, providing control over
interruption and scheduling behavior.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Effect.sleep("2 seconds")
  return "completed"
})

// Run with abort signal for cancellation
const controller = new AbortController()
const options: Effect.RunOptions = {
  signal: controller.signal
}

const fiber = Effect.runFork(program, options)
// Later: controller.abort() to cancel
```

**Signature**

```ts
export interface RunOptions {
  readonly signal?: AbortSignal | undefined
  readonly scheduler?: Scheduler | undefined
  readonly uninterruptible?: boolean | undefined
  readonly onFiberStart?: ((fiber: Fiber<unknown, unknown>) => void) | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8361)

Since v4.0.0