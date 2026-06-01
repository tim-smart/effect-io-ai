Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromPubSubTake

Subscribes to a `PubSub` of `Take` values and exposes them as a channel.

**Details**

Output `Take` values are emitted as non-empty arrays. Failed `Take` values
fail the channel. Done `Take` values complete the channel.

**Signature**

```ts
declare const fromPubSubTake: <A, E, Done>(pubsub: PubSub.PubSub<Take.Take<A, E, Done>>) => Channel<Arr.NonEmptyReadonlyArray<A>, E, Done>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1719)

Since v4.0.0