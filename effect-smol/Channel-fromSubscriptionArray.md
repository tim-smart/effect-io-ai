Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromSubscriptionArray

Create a channel from a PubSub subscription that outputs arrays of values.

This constructor creates a channel that reads from a PubSub subscription and outputs
arrays of values in chunks. It's useful when you want to process multiple values at once
for better performance.

**Signature**

```ts
declare const fromSubscriptionArray: <A>(subscription: PubSub.Subscription<A>) => Channel<Arr.NonEmptyReadonlyArray<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1436)

Since v4.0.0