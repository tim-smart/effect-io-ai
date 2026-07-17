Package: `effect`<br />
Module: `TxSemaphore`<br />

## TxSemaphore.withPermit

Executes an effect with a single permit from the semaphore. The permit is
automatically acquired before execution and released afterwards, even if the
effect fails or is interrupted.

**When to use**

Use to run an effect while automatically acquiring and releasing one
transactional permit.

**Details**

The permit acquisition and release operations use atomic semantics to ensure
proper resource management with Effect's scoped operations.

**Example** (Running an effect with a permit)

```ts
import { Console, Effect, TxSemaphore } from "effect"

const program = Effect.gen(function*() {
  const semaphore = yield* TxSemaphore.make(2)

  // Execute database operation with automatic permit management
  const result = yield* TxSemaphore.withPermit(
    semaphore,
    Effect.gen(function*() {
      yield* Console.log("Permit acquired, accessing database...")
      yield* Effect.sleep("100 millis") // Simulate database work
      yield* Console.log("Database operation complete")
      return "query result"
    })
  )

  yield* Console.log(`Result: ${result}`)
  // Permit is automatically released here
})
```

**See**

- `withPermits` for automatically acquiring and releasing multiple permits
- `withPermitScoped` for acquiring one permit for the current scope
- `acquire` for manual single-permit acquisition

**Signature**

```ts
declare const withPermit: { (self: TxSemaphore): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(self: TxSemaphore, effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TxSemaphore.ts#L531)

Since v2.0.0