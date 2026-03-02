Package: `effect`<br />
Module: `TxSemaphore`<br />

## TxSemaphore.withPermitScoped

Acquires a single permit from the semaphore in a scoped manner. The permit
will be automatically released when the scope is closed, even if effects
within the scope fail or are interrupted.

**Note**: The permit acquisition and release operations use atomic semantics
to ensure proper resource management with Effect's scoped operations.

**Example**

```ts
import { Console, Effect, TxSemaphore } from "effect"

const program = Effect.gen(function*() {
  const semaphore = yield* TxSemaphore.make(3)

  yield* Effect.scoped(
    Effect.gen(function*() {
      // Acquire permit for the duration of this scope
      yield* TxSemaphore.withPermitScoped(semaphore)
      yield* Console.log("Permit acquired for scope")

      // Do work within the scope
      yield* Effect.sleep("500 millis")
      yield* Console.log("Work completed")

      // Permit will be automatically released when scope closes
    })
  )

  yield* Console.log("Scope closed, permit released")
})
```

**Signature**

```ts
declare const withPermitScoped: (self: TxSemaphore) => Effect.Effect<void, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSemaphore.ts#L535)

Since v4.0.0