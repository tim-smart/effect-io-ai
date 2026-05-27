Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.BackPressureStrategy

A strategy that applies back pressure to publishers when the `PubSub` is at
capacity. This guarantees that all subscribers will receive all messages
published to the `PubSub` while they are subscribed. However, it creates the
risk that a slow subscriber will slow down the rate at which messages
are published and received by other subscribers.

**When to use**

Use to preserve every message for current subscribers when a bounded custom
`PubSub` should make publishers wait for capacity instead of dropping or
evicting messages.

**See**

- `bounded` for creating bounded PubSubs with back pressure by default
- `DroppingStrategy` for dropping new messages when capacity is full
- `SlidingStrategy` for evicting old messages when capacity is full

**Signature**

```ts
declare class BackPressureStrategy<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L2369)

Since v4.0.0