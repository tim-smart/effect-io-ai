Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.releaseSubscriber

Removes a subscriber queue from the pub/sub and shuts it down.

This is the transactional release step of `subscribe`, exposed so that
callers can compose it with other Tx operations in a single transaction.

**Signature**

```ts
declare const releaseSubscriber: { <A>(queue: TxQueue.TxQueue<A>): (self: TxPubSub<A>) => Effect.Effect<void, never, Effect.Transaction>; <A>(self: TxPubSub<A>, queue: TxQueue.TxQueue<A>): Effect.Effect<void, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L522)

Since v4.0.0