Package: `effect`<br />
Module: `Mailbox`<br />

## Mailbox.ReadonlyMailbox

A `ReadonlyMailbox` represents a mailbox that can only be read from.

**Signature**

```ts
export interface ReadonlyMailbox<out A, out E = never>
  extends Effect<readonly [messages: Chunk<A>, done: boolean], E>, Inspectable
{
  readonly [ReadonlyTypeId]: ReadonlyTypeId
  /**
   * Take all messages from the mailbox, returning an empty Chunk if the mailbox
   * is empty or done.
   */
  readonly clear: Effect<Chunk<A>, E>
  /**
   * Take all messages from the mailbox, or wait for messages to be available.
   *
   * If the mailbox is done, the `done` flag will be `true`. If the mailbox
   * fails, the Effect will fail with the error.
   */
  readonly takeAll: Effect<readonly [messages: Chunk<A>, done: boolean], E>
  /**
   * Take a specified number of messages from the mailbox. It will only take
   * up to the capacity of the mailbox.
   *
   * If the mailbox is done, the `done` flag will be `true`. If the mailbox
   * fails, the Effect will fail with the error.
   */
  readonly takeN: (n: number) => Effect<readonly [messages: Chunk<A>, done: boolean], E>
  /**
   * Take a single message from the mailbox, or wait for a message to be
   * available.
   *
   * If the mailbox is done, it will fail with `NoSuchElementException`. If the
   * mailbox fails, the Effect will fail with the error.
   */
  readonly take: Effect<A, E | NoSuchElementException>
  /** Wait for the mailbox to be done. */
  readonly await: Effect<void, E>
  /**
   * Check the size of the mailbox.
   *
   * If the mailbox is complete, it will return `None`.
   */
  readonly size: Effect<Option<number>>
  /**
   * Check the size of the mailbox.
   *
   * If the mailbox is complete, it will return `None`.
   */
  readonly unsafeSize: () => Option<number>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Mailbox.ts#L126)

Since v3.8.0