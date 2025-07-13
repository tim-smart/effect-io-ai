Package: `effect`<br />
Module: `Effect`<br />

## Effect.Latch

A `Latch` is a synchronization primitive that allows you to control the
execution of fibers based on an open or closed state. It acts as a gate,
where fibers can wait for the latch to open before proceeding.

**Details**

A `Latch` can be in one of two states: open or closed. Fibers can:
- Wait for the latch to open using `await`.
- Proceed only when the latch is open using `whenOpen`.
- Open the latch to release all waiting fibers using `open`.
- Close the latch to block fibers using `close`.

Additionally, fibers can be released without changing the state of the latch
using `release`.

**Signature**

```ts
export interface Latch extends Effect<void> {
  /**
   * Opens the latch, releasing all fibers waiting on it.
   *
   * **Details**
   *
   * Once the latch is opened, it remains open. Any fibers waiting on `await`
   * will be released and can continue execution.
   */
  readonly open: Effect<void>

  /**
   * Opens the latch, releasing all fibers waiting on it.
   *
   * **Details**
   *
   * Once the latch is opened, it remains open. Any fibers waiting on `await`
   * will be released and can continue execution.
   */
  readonly unsafeOpen: () => void

  /**
   * Releases all fibers waiting on the latch without opening it.
   *
   * **Details**
   *
   * This function lets waiting fibers proceed without permanently changing the
   * state of the latch.
   */
  readonly release: Effect<void>

  /**
   * Waits for the latch to be opened.
   *
   * **Details**
   *
   * If the latch is already open, this effect completes immediately. Otherwise,
   * it suspends the fiber until the latch is opened.
   */
  readonly await: Effect<void>

  /**
   * Closes the latch, blocking fibers from proceeding.
   *
   * **Details**
   *
   * This operation puts the latch into a closed state, requiring it to be
   * reopened before waiting fibers can proceed.
   */
  readonly close: Effect<void>

  /**
   * Unsafely closes the latch, blocking fibers without effect guarantees.
   *
   * **Details**
   *
   * Use this operation cautiously, as it does not run within an effect context
   * and bypasses runtime guarantees.
   */
  readonly unsafeClose: () => void

  /**
   * Runs the given effect only when the latch is open.
   *
   * **Details**
   *
   * This function ensures that the provided effect executes only if the latch
   * is open. If the latch is closed, the fiber will wait until it opens.
   */
  readonly whenOpen: <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>

  readonly [Unify.typeSymbol]?: unknown
  readonly [Unify.unifySymbol]?: LatchUnify<this>
  readonly [Unify.ignoreSymbol]?: LatchUnifyIgnore
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L11841)

Since v3.8.0