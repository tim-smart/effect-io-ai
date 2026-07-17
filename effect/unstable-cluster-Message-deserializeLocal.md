Package: `effect`<br />
Module: `Message`<br />

## Message.deserializeLocal

Decodes a partial envelope back into a locally deliverable incoming message.

**Details**

Control envelopes pass through directly. Request envelopes require the original
`OutgoingRequest` so the payload can be decoded with the correct RPC schema and
context.

**Signature**

```ts
declare const deserializeLocal: <Rpc extends Rpc.Any>(self: Outgoing<Rpc>, encoded: Envelope.Partial) => Effect.Effect<IncomingLocal<Rpc>, MalformedMessage>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Message.ts#L280)

Since v4.0.0