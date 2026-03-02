Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.make

Creates a new Semaphore.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Effect.makeSemaphore`

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Semaphore.ts#L164)

Since v2.0.0