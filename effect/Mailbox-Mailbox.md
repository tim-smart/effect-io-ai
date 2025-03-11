## Mailbox

A `Mailbox` is a queue that can be signaled to be done or failed.

**Signature**

```ts
export interface Mailbox<in out A, in out E = never> extends ReadonlyMailbox<A, E> {
  readonly [TypeId]: TypeId
  /**
   * Add a message to the mailbox. Returns `false` if the mailbox is done.
   */
  readonly offer: (message: A) => Effect<boolean>
  /**
   * Add a message to the mailbox. Returns `false` if the mailbox is done.
   */
  readonly unsafeOffer: (message: A) => boolean
  /**
   * Add multiple messages to the mailbox. Returns the remaining messages that
   * were not added.
   */
  readonly offerAll: (messages: Iterable<A>) => Effect<Chunk<A>>
  /**
   * Add multiple messages to the mailbox. Returns the remaining messages that
   * were not added.
   */
  readonly unsafeOfferAll: (messages: Iterable<A>) => Chunk<A>
  /**
   * Fail the mailbox with an error. If the mailbox is already done, `false` is
   * returned.
   */
  readonly fail: (error: E) => Effect<boolean>
  /**
   * Fail the mailbox with a cause. If the mailbox is already done, `false` is
   * returned.
   */
  readonly failCause: (cause: Cause<E>) => Effect<boolean>
  /**
   * Signal that the mailbox is complete. If the mailbox is already done, `false` is
   * returned.
   */
  readonly end: Effect<boolean>
  /**
   * Signal that the mailbox is done. If the mailbox is already done, `false` is
   * returned.
   */
  readonly done: (exit: Exit<void, E>) => Effect<boolean>
  /**
   * Signal that the mailbox is done. If the mailbox is already done, `false` is
   * returned.
   */
  readonly unsafeDone: (exit: Exit<void, E>) => boolean
  /**
   * Shutdown the mailbox, canceling any pending operations.
   * If the mailbox is already done, `false` is returned.
   */
  readonly shutdown: Effect<boolean>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Mailbox.ts#L67)

Since v3.8.0