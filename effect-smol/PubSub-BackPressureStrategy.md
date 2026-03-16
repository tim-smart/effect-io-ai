Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.BackPressureStrategy

A strategy that applies back pressure to publishers when the `PubSub` is at
capacity. This guarantees that all subscribers will receive all messages
published to the `PubSub` while they are subscribed. However, it creates the
risk that a slow subscriber will slow down the rate at which messages
are published and received by other subscribers.

**Signature**

```ts
declare class BackPressureStrategy<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L2207)

Since v4.0.0