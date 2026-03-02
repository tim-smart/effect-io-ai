Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.makeUnsafe

Unsafely creates a new Semaphore.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Effect.makeSemaphoreUnsafe`

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Semaphore.ts#L129)

Since v2.0.0