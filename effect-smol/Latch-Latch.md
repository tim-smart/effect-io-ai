Package: `effect`<br />
Module: `Latch`<br />

## Latch.Latch

A reusable coordination primitive that lets fibers wait until they are
released by the latch.

**When to use**

Use to coordinate fibers that must wait for an explicit open or release
signal before continuing.

**Details**

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

**See**

- `make` for creating a latch inside Effect code
- `open` for releasing current and future waiters
- `release` for releasing only the current waiters

**Signature**

```ts
export interface Latch {
  /**
   * Opens the latch, releasing all fibers waiting on it.
   *
   * **When to use**
   *
   * Use to let current and future waiters continue.
   */
  readonly open: Effect.Effect<boolean>

  /**
   * Opens the latch synchronously, releasing all fibers waiting on it.
   *
   * **When to use**
   *
   * Use when synchronous code must open the latch immediately.
   */
  openUnsafe(this: Latch): boolean

  /**
   * Releases all fibers currently waiting on the latch without opening it.
   *
   * **When to use**
   *
   * Use to let current waiters continue while future waiters still suspend.
   */
  readonly release: Effect.Effect<boolean>

  /**
   * Waits for the latch to be opened or released.
   *
   * **When to use**
   *
   * Use to suspend until the latch allows the current fiber to continue.
   */
  readonly await: Effect.Effect<void>

  /**
   * Closes the latch so future waiters suspend again.
   *
   * **When to use**
   *
   * Use to re-enable waiting after a latch has been opened.
   */
  readonly close: Effect.Effect<boolean>

  /**
   * Closes the latch synchronously so future waiters suspend again.
   *
   * **When to use**
   *
   * Use when synchronous code must close the latch immediately.
   */
  closeUnsafe(this: Latch): boolean

  /**
   * Runs the given effect only after the latch allows waiting fibers to
   * continue.
   *
   * **When to use**
   *
   * Use to gate an effect behind the latch signal.
   */
  whenOpen<A, E, R>(self: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L52)

Since v4.0.0