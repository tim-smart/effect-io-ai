Package: `effect`<br />
Module: `TxSemaphore`<br />

## TxSemaphore.TxSemaphore

A transactional semaphore that manages permits using Software Transactional
Memory (STM) semantics, providing atomic permit acquisition and release
operations within Effect transactions for concurrency control over limited
resources.

**When to use**

Use to coordinate permit accounting atomically with other transactional
state changes.

**Example** (Managing permits transactionally)

```ts
import { Effect, TxSemaphore } from "effect"

// Create a semaphore with 3 permits for managing concurrent database connections
const program = Effect.gen(function*() {
  const dbSemaphore = yield* TxSemaphore.make(3)

  // Acquire a permit before accessing the database
  yield* TxSemaphore.acquire(dbSemaphore)
  console.log("Database connection acquired")

  // Perform database operations...

  // Release the permit when done
  yield* TxSemaphore.release(dbSemaphore)
  console.log("Database connection released")
})
```

**See**

- `make` for creating a transactional semaphore
- `withPermit` for automatically acquiring and releasing one permit
- `acquire` for manually acquiring one permit transactionally

**Signature**

```ts
export interface TxSemaphore extends Inspectable, Pipeable {
  readonly [TypeId]: typeof TypeId
  readonly permitsRef: TxRef.TxRef<number>
  readonly capacity: number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSemaphore.ts#L63)

Since v4.0.0