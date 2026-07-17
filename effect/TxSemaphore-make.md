Package: `effect`<br />
Module: `TxSemaphore`<br />

## TxSemaphore.make

Creates a new TxSemaphore with the specified number of permits.

**When to use**

Use to create a transactional semaphore with a fixed permit capacity.

**Example** (Creating a semaphore)

```ts
import { Console, Effect, TxSemaphore } from "effect"

// Create a semaphore for managing concurrent access to a resource pool
const program = Effect.gen(function*() {
  // Create a semaphore with 3 permits for a connection pool
  const connectionSemaphore = yield* TxSemaphore.make(3)

  // Check initial state
  const available = yield* TxSemaphore.available(connectionSemaphore)
  const capacity = yield* TxSemaphore.capacity(connectionSemaphore)

  yield* Console.log(
    `Created semaphore with ${capacity} permits, ${available} available`
  )
  // Output: "Created semaphore with 3 permits, 3 available"
})
```

**See**

- `available` for reading the current available permit count
- `capacity` for reading the fixed total permit count

**Signature**

```ts
declare const make: (permits: number) => Effect.Effect<TxSemaphore>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TxSemaphore.ts#L126)

Since v2.0.0