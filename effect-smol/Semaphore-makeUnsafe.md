Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.makeUnsafe

Synchronously creates a `Semaphore` initialized with the specified total
number of permits.

**When to use**

Use to construct a semaphore synchronously when an immediate value is
required outside an Effect workflow.

**Example** (Creating an unsafe semaphore)

```ts
import { Effect, Semaphore } from "effect"

const semaphore = Semaphore.makeUnsafe(3)

const task = (id: number) =>
  semaphore.withPermits(1)(
    Effect.gen(function*() {
      yield* Effect.log(`Task ${id} started`)
      yield* Effect.sleep("1 second")
      yield* Effect.log(`Task ${id} completed`)
    })
  )

// Only 3 tasks can run concurrently
const program = Effect.all([
  task(1),
  task(2),
  task(3),
  task(4),
  task(5)
], { concurrency: "unbounded" })
```

**Signature**

```ts
declare const makeUnsafe: (permits: number) => Semaphore
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Semaphore.ts#L212)

Since v4.0.0