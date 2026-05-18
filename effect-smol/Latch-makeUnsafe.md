Package: `effect`<br />
Module: `Latch`<br />

## Latch.makeUnsafe

Creates a `Latch` synchronously, outside of `Effect`.

The latch starts closed by default; pass `true` to create it open. Use this
only when synchronous allocation is required, otherwise prefer `make`.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Effect.makeLatchUnsafe`

**Example** (Creating a latch unsafely)

```ts
import { Effect, Latch } from "effect"

const latch = Latch.makeUnsafe(false)

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

const program = Effect.all([waiter, opener])
```

**Signature**

```ts
declare const makeUnsafe: (open?: boolean | undefined) => Latch
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L121)

Since v3.8.0