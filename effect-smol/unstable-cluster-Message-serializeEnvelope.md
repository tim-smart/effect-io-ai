Package: `effect`<br />
Module: `Message`<br />

## Message.serializeEnvelope

Serializes an outgoing message into its JSON envelope representation.

Schema encoding failures are converted to `MalformedMessage`.

**Signature**

```ts
declare const serializeEnvelope: <Rpc extends Rpc.Any>(message: Outgoing<Rpc>) => Effect.Effect<Envelope.Encoded, MalformedMessage, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Message.ts#L231)

Since v4.0.0