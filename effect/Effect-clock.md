Package: `effect`<br />
Module: `Effect`<br />

## Effect.clock

Retrieves the `Clock` service from the context.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  const clock = yield* Effect.clock
  const currentTime = yield* clock.currentTimeMillis
  console.log(`Current time in milliseconds: ${currentTime}`)
})

Effect.runFork(program)
// Example Output:
// Current time in milliseconds: 1735484796134
```

**Signature**

```ts
declare const clock: Effect<Clock.Clock, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6740)

Since v2.0.0