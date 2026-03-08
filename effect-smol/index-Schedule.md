Package: `effect`<br />
Module: `index`<br />

## index.Schedule

Re-exports all named exports from the "./Schedule.ts" module as `Schedule`.

**Example**

```ts
import { Effect, Schedule } from "effect"

// Retry with exponential backoff
const retryPolicy = Schedule.exponential("100 millis", 2.0)
  .pipe(Schedule.compose(Schedule.recurs(3)))

const program = Effect.gen(function*() {
  // This will retry up to 3 times with exponential backoff
  const result = yield* Effect.retry(
    Effect.fail("Network error"),
    retryPolicy
  )
})

// Repeat on a fixed schedule
const heartbeat = Effect.log("heartbeat")
  .pipe(Effect.repeat(Schedule.spaced("30 seconds")))
```

**Signature**

```ts
export * as Schedule from "./Schedule.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L3268)

Since v2.0.0