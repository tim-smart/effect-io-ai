Package: `effect`<br />
Module: `MessageStorage`<br />

## MessageStorage.Encoded

Low-level storage-driver contract for encoded envelopes and replies.

**Details**

Implementations persist encoded messages, track primary keys and delayed
delivery, read unprocessed messages, and provide transaction wrapping.

**Signature**

```ts
type Encoded = {
  /**
   * Save the provided message and its associated metadata.
   */
  readonly saveEnvelope: (
    options: {
      readonly envelope: Envelope.Encoded
      readonly primaryKey: string | null
      readonly deliverAt: number | null
    }
  ) => Effect.Effect<SaveResult.Encoded, PersistenceError>

  /**
   * Save the provided `Reply` and its associated metadata.
   */
  readonly saveReply: (reply: Reply.Encoded) => Effect.Effect<void, PersistenceError>

  /**
   * Remove the replies for the specified request.
   */
  readonly clearReplies: (requestId: Snowflake.Snowflake) => Effect.Effect<void, PersistenceError>

  /**
   * Retrieves the request id for the specified primary key.
   */
  readonly requestIdForPrimaryKey: (
    primaryKey: string
  ) => Effect.Effect<Option.Option<Snowflake.Snowflake>, PersistenceError>

  /**
   * Retrieves the replies for the specified requests.
   *
   * **Details**
   *
   * This returns:
   *
   * - Un-acknowledged chunk replies
   * - `WithExit` replies
   */
  readonly repliesFor: (requestIds: Arr.NonEmptyArray<string>) => Effect.Effect<
    Array<Reply.Encoded>,
    PersistenceError
  >

  /**
   * Retrieves the replies for the specified request ids.
   */
  readonly repliesForUnfiltered: (requestIds: Arr.NonEmptyArray<string>) => Effect.Effect<
    Array<Reply.Encoded>,
    PersistenceError
  >

  /**
   * Retrieves the unprocessed messages for the given shards.
   *
   * **Details**
   *
   * A message is unprocessed when:
   *
   * - Requests that have no `WithExit` replies or no unacknowledged chunk replies
   * - The latest `AckChunk` envelope
   * - All `Interrupt` envelopes for unprocessed requests
   */
  readonly unprocessedMessages: (
    shardIds: Arr.NonEmptyArray<string>,
    now: number
  ) => Effect.Effect<
    Array<{
      readonly envelope: Envelope.Encoded
      readonly lastSentReply: Option.Option<Reply.Encoded>
    }>,
    PersistenceError
  >

  /**
   * Retrieves the unprocessed messages by id.
   */
  readonly unprocessedMessagesById: (
    messageIds: Arr.NonEmptyArray<Snowflake.Snowflake>,
    now: number
  ) => Effect.Effect<
    Array<{
      readonly envelope: Envelope.Encoded
      readonly lastSentReply: Option.Option<Reply.Encoded>
    }>,
    PersistenceError
  >

  /**
   * Reset the mailbox state for the provided address.
   */
  readonly resetAddress: (
    address: EntityAddress
  ) => Effect.Effect<void, PersistenceError>

  /**
   * Clear all messages and replies for the provided address.
   */
  readonly clearAddress: (
    address: EntityAddress
  ) => Effect.Effect<void, PersistenceError>

  /**
   * Reset the mailbox state for the provided shards.
   */
  readonly resetShards: (
    shardIds: Arr.NonEmptyArray<string>
  ) => Effect.Effect<void, PersistenceError>

  /**
   * Used to wrap requests with transactions.
   */
  readonly withTransaction: <A, E, R>(
    effect: Effect.Effect<A, E, R>
  ) => Effect.Effect<A, E, R>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MessageStorage.ts#L305)

Since v4.0.0