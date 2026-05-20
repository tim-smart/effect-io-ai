Package: `effect`<br />
Module: `Channel`<br />

## Channel.runIntoPubSub

Runs a channel and publishes each output element to a `PubSub`.

The channel's output values are published as individual PubSub messages. Use
`options.shutdownOnEnd` to shut down the PubSub when channel execution ends.

**Signature**

```ts
declare const runIntoPubSub: { <OutElem>(pubsub: PubSub.PubSub<OutElem>, options?: { readonly shutdownOnEnd?: boolean | undefined; } | undefined): <OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>) => Effect.Effect<void, never, Env>; <OutElem, OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>, pubsub: PubSub.PubSub<OutElem>, options?: { readonly shutdownOnEnd?: boolean | undefined; } | undefined): Effect.Effect<void, never, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L8092)

Since v4.0.0