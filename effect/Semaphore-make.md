Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.make

Creates a `Semaphore` initialized with the specified total number of permits.

**When to use**

Use to create a semaphore inside Effect code for bounding concurrency with
automatic or manual permit management.

**Example** (Creating a semaphore)

```ts
import { Effect, Semaphore } from "effect"

const program = Effect.gen(function*() {
  const semaphore = yield* Semaphore.make(2)

  const task = (id: number) =>
    semaphore.withPermits(1)(
      Effect.gen(function*() {
        yield* Effect.log(`Task ${id} acquired permit`)
        yield* Effect.sleep("1 second")
        yield* Effect.log(`Task ${id} releasing permit`)
      })
    )

  // Run 4 tasks, but only 2 can run concurrently
  yield* Effect.all([task(1), task(2), task(3), task(4)])
})
```

**Signature**

```ts
declare const make: (permits: number) => Effect.Effect<Semaphore>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Semaphore.ts#L329)

Since v4.0.0