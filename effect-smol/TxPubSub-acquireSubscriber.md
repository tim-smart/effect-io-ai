Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.acquireSubscriber

Creates a subscriber queue and registers it with the pub/sub.

**When to use**

Use to create and register a subscriber queue inside a larger transaction
when registration must be atomic with other Tx operations.

**Details**

This is the transactional acquire step of `subscribe`, exposed so that callers can compose it with other Tx operations in a single transaction, such as `TxSubscriptionRef.changes`.

**See**

- `subscribe` for the scoped acquire and release wrapper when no custom transaction composition is needed
- `releaseSubscriber` to remove and shut down a queue returned by `acquireSubscriber`

**Signature**

```ts
declare const acquireSubscriber: <A>(self: TxPubSub<A>) => Effect.Effect<TxQueue.TxQueue<A>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L566)

Since v4.0.0