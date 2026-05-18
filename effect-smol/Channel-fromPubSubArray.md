Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromPubSubArray

Create a channel from a PubSub that outputs arrays of values.

This constructor creates a channel that reads from a PubSub by automatically
subscribing to it and collecting values into arrays. The channel outputs
arrays of values in chunks, making it ideal for batch processing scenarios.

**Signature**

```ts
declare const fromPubSubArray: <A>(pubsub: PubSub.PubSub<A>) => Channel<Arr.NonEmptyReadonlyArray<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1660)

Since v4.0.0