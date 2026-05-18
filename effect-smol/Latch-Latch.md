Package: `effect`<br />
Module: `Latch`<br />

## Latch.Latch

A reusable coordination primitive that lets fibers wait until they are
released by the latch.

A closed latch causes `await` and `whenOpen` to suspend. `open` opens the
latch and releases current and future waiters, `release` releases only
current waiters without opening it, and `close` makes future waiters suspend
again.

**Example** (Coordinating fibers with a latch)

```ts
import { Effect, Latch } from "effect"

// Create and use a latch for coordination between fibers
const program = Effect.gen(function*() {
  const latch = yield* Latch.make()

  // Wait for the latch to be opened
  yield* latch.await

  return "Latch was opened!"
})
```

**Signature**

```ts
export interface Latch {
  /** open the latch, releasing all fibers waiting on it */
  readonly open: Effect.Effect<boolean>
  /** open the latch, releasing all fibers waiting on it */
  openUnsafe(this: Latch): boolean
  /** release all fibers waiting on the latch, without opening it */
  readonly release: Effect.Effect<boolean>
  /** wait for the latch to be opened */
  readonly await: Effect.Effect<void>
  /** close the latch */
  readonly close: Effect.Effect<boolean>
  /** close the latch */
  closeUnsafe(this: Latch): boolean
  /** only run the given effect when the latch is open */
  whenOpen<A, E, R>(self: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L67)

Since v3.8.0