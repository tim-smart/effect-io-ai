## clockWith

Retrieves the `Clock` service from the context and provides it to the
specified effectful function.

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
declare const clockWith: <A, E, R>(f: (clock: Clock.Clock) => Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6610)

Since v2.0.0