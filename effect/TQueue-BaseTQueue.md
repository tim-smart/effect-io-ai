Package: `effect`<br />
Module: `TQueue`<br />

## TQueue.BaseTQueue

The base interface that all `TQueue`s must implement.

**Signature**

```ts
export interface BaseTQueue {
  /**
   * Returns the number of elements the queue can hold.
   */
  capacity(): number

  /**
   * Retrieves the size of the queue, which is equal to the number of elements
   * in the queue. This may be negative if fibers are suspended waiting for
   * elements to be added to the queue.
   */
  readonly size: STM.STM<number>

  /**
   * Returns `true` if the `TQueue` contains at least one element, `false`
   * otherwise.
   */
  readonly isFull: STM.STM<boolean>

  /**
   * Returns `true` if the `TQueue` contains zero elements, `false` otherwise.
   */
  readonly isEmpty: STM.STM<boolean>

  /**
   * Interrupts any fibers that are suspended on `offer` or `take`. Future calls
   * to `offer*` and `take*` will be interrupted immediately.
   */
  readonly shutdown: STM.STM<void>

  /**
   * Returns `true` if `shutdown` has been called, otherwise returns `false`.
   */
  readonly isShutdown: STM.STM<boolean>

  /**
   * Waits until the queue is shutdown. The `STM` returned by this method will
   * not resume until the queue has been shutdown. If the queue is already
   * shutdown, the `STM` will resume right away.
   */
  readonly awaitShutdown: STM.STM<void>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L109)

Since v2.0.0