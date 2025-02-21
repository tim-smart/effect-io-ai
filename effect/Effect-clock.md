# clock

Retrieves the `Clock` service from the context.

To import and use `clock` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.clock
```

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function* () {
  const clock = yield* Effect.clock
  const currentTime = yield* clock.currentTimeMillis
  console.log(`Current time in milliseconds: ${currentTime}`)
})

// Effect.runFork(program)
// Example Output:
// Current time in milliseconds: 1735484796134
```

**Signature**

```ts
export declare const clock: Effect<Clock.Clock, never, never>
```
