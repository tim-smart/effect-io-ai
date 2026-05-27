Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.releaseSubscriber

Removes a subscriber queue from the pub/sub and shuts it down.

**When to use**

Use to release a manually acquired subscriber queue inside a larger
transaction, removing it from the pub/sub and shutting it down together with
related transactional cleanup.

**Details**

This is the transactional release step of `subscribe`, exposed so that callers can compose it with other Tx operations in a single transaction.

**Gotchas**

The supplied queue is shut down after being removed, so callers should pass a
queue acquired for this pub/sub.

**See**

- `acquireSubscriber` for the matching transactional acquire step
- `subscribe` for the scoped acquire and release wrapper

**Signature**

```ts
declare const releaseSubscriber: { <A>(queue: TxQueue.TxQueue<A>): (self: TxPubSub<A>) => Effect.Effect<void, never, Effect.Transaction>; <A>(self: TxPubSub<A>, queue: TxQueue.TxQueue<A>): Effect.Effect<void, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L599)

Since v4.0.0