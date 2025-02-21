# clockWith

Retrieves the `Clock` service from the context and provides it to the
specified effectful function.

To import and use `clockWith` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.clockWith
```

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.clockWith((clock) =>
  clock.currentTimeMillis.pipe(
    Effect.map((currentTime) => `Current time is: ${currentTime}`),
    Effect.tap(Console.log)
  )
)

// Effect.runFork(program)
// Example Output:
// Current time is: 1735484929744
```

**Signature**

```ts
export declare const clockWith: <A, E, R>(f: (clock: Clock.Clock) => Effect<A, E, R>) => Effect<A, E, R>
```
