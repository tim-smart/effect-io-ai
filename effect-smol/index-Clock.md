Package: `effect`<br />
Module: `index`<br />

## index.Clock

Re-exports all named exports from the "./Clock.ts" module as `Clock`.

**Example**

```ts
import { Clock, Effect } from "effect"

// Get current time in milliseconds
const getCurrentTime = Clock.currentTimeMillis

// Sleep for 1 second
const sleep1Second = Effect.sleep("1 seconds")

// Measure execution time
const measureTime = Effect.gen(function*() {
  const start = yield* Clock.currentTimeMillis
  yield* Effect.sleep("100 millis")
  const end = yield* Clock.currentTimeMillis
  return end - start
})
```

**Example**

```ts
import { Clock, Effect } from "effect"

// Using Clock service directly
const program = Effect.gen(function*() {
  const clock = yield* Clock.Clock
  const currentTime = yield* clock.currentTimeMillis
  console.log(`Current time: ${currentTime}`)

  // Sleep for 500ms
  yield* Effect.sleep("500 millis")

  const afterSleep = yield* clock.currentTimeMillis
  console.log(`After sleep: ${afterSleep}`)
})
```

**Signature**

```ts
export * as Clock from "./Clock.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L444)

Since v2.0.0