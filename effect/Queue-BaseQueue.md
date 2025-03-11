## BaseQueue

The base interface that all `Queue`s must implement.

**Signature**

```ts
export interface BaseQueue {
  /**
   * Returns the number of elements the queue can hold.
   */
  capacity(): number

  /**
   * Returns false if shutdown has been called.
   */
  isActive(): boolean

  /**
   * Retrieves the size of the queue, which is equal to the number of elements
   * in the queue. This may be negative if fibers are suspended waiting for
   * elements to be added to the queue.
   */
  readonly size: Effect.Effect<number>

  /**
   * Retrieves the size of the queue, which is equal to the number of elements
   * in the queue. This may be negative if fibers are suspended waiting for
   * elements to be added to the queue. Returns None if shutdown has been called
   */
  unsafeSize(): Option.Option<number>

  /**
   * Returns `true` if the `Queue` contains at least one element, `false`
   * otherwise.
   */
  readonly isFull: Effect.Effect<boolean>

  /**
   * Returns `true` if the `Queue` contains zero elements, `false` otherwise.
   */
  readonly isEmpty: Effect.Effect<boolean>

  /**
   * Interrupts any fibers that are suspended on `offer` or `take`. Future calls
   * to `offer*` and `take*` will be interrupted immediately.
   */
  readonly shutdown: Effect.Effect<void>

  /**
   * Returns `true` if `shutdown` has been called, otherwise returns `false`.
   */
  readonly isShutdown: Effect.Effect<boolean>

  /**
   * Waits until the queue is shutdown. The `Effect` returned by this method will
   * not resume until the queue has been shutdown. If the queue is already
   * shutdown, the `Effect` will resume right away.
   */
  readonly awaitShutdown: Effect.Effect<void>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L189)

Since v2.0.0