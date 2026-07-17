Package: `effect`<br />
Module: `Channel`<br />

## Channel.runIntoPubSubArray

Runs an array-emitting channel and publishes each array element to a
`PubSub`.

**Details**

Each element inside emitted non-empty arrays is published as an individual
PubSub message. Use `options.shutdownOnEnd` to shut down the PubSub when
channel execution ends.

**Signature**

```ts
declare const runIntoPubSubArray: { <OutElem>(pubsub: PubSub.PubSub<OutElem>, options?: { readonly shutdownOnEnd?: boolean | undefined; } | undefined): <OutErr, OutDone, Env>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, unknown, unknown, unknown, Env>) => Effect.Effect<OutDone, OutErr, Env>; <OutElem, OutErr, OutDone, Env>(self: Channel<Arr.NonEmptyReadonlyArray<OutElem>, OutErr, OutDone, unknown, unknown, unknown, Env>, pubsub: PubSub.PubSub<OutElem>, options?: { readonly shutdownOnEnd?: boolean | undefined; } | undefined): Effect.Effect<OutDone, OutErr, Env>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L8521)

Since v4.0.0