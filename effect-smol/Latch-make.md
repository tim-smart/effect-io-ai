Package: `effect`<br />
Module: `Latch`<br />

## Latch.make

Creates a new Latch.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Effect.makeLatch`

**Example**

```ts
import { Effect, Latch } from "effect"

const program = Effect.gen(function*() {
  const latch = yield* Latch.make(false)

  const waiter = Effect.gen(function*() {
    yield* Effect.log("Waiting for latch to open...")
    yield* latch.await
    yield* Effect.log("Latch opened! Continuing...")
  })

  const opener = Effect.gen(function*() {
    yield* Effect.sleep("2 seconds")
    yield* Effect.log("Opening latch...")
    yield* latch.open
  })

  yield* Effect.all([waiter, opener])
})
```

**Signature**

```ts
declare const make: (open?: boolean | undefined) => Effect.Effect<Latch>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L112)

Since v3.8.0