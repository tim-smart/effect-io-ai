Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.acquireSubscriber

Creates a subscriber queue and registers it with the pub/sub.

This is the transactional acquire step of `subscribe`, exposed so that
callers can compose it with other Tx operations in a single transaction
(e.g. `TxSubscriptionRef.changes`).

**Signature**

```ts
declare const acquireSubscriber: <A>(self: TxPubSub<A>) => Effect.Effect<TxQueue.TxQueue<A>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L504)

Since v4.0.0