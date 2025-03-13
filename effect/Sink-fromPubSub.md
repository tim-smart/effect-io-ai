Package: `effect`<br />
Module: `Sink`<br />

## Sink.fromPubSub

Create a sink which publishes each element to the specified `PubSub`.

If the `shutdown` parameter is `true`, the `PubSub` will be shutdown after
the sink is evaluated (defaults to `false`).

**Signature**

```ts
declare const fromPubSub: <In>(pubsub: PubSub.PubSub<In>, options?: { readonly shutdown?: boolean | undefined; }) => Sink<void, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1004)

Since v2.0.0