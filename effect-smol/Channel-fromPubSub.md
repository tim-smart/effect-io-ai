Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromPubSub

Create a channel from a PubSub that outputs individual values.

This constructor creates a channel that reads from a PubSub by automatically
subscribing to it. The channel outputs individual values as they are published
to the PubSub, making it ideal for real-time streaming scenarios.

**Signature**

```ts
declare const fromPubSub: <A>(pubsub: PubSub.PubSub<A>) => Channel<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1534)

Since v4.0.0