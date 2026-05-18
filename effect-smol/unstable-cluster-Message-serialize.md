Package: `effect`<br />
Module: `Message`<br />

## Message.serialize

Serializes an outgoing message into a partial envelope.

Control envelopes pass through unchanged. Requests are encoded with their RPC
payload schema, reusing the cached encoded request when available.

**Signature**

```ts
declare const serialize: <Rpc extends Rpc.Any>(message: Outgoing<Rpc>) => Effect.Effect<Envelope.Partial, MalformedMessage>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Message.ts#L210)

Since v4.0.0