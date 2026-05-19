Package: `effect`<br />
Module: `Sink`<br />

## Sink.fromPubSub

Creates a sink that publishes every consumed input element to a `PubSub`.

The sink completes with `void` when the upstream stream ends.

**Signature**

```ts
declare const fromPubSub: <A>(pubsub: PubSub.PubSub<A>) => Sink<void, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L481)

Since v2.0.0