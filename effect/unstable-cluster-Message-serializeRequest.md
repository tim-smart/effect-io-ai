Package: `effect`<br />
Module: `Message`<br />

## Message.serializeRequest

Encodes the payload of an `OutgoingRequest` with the request's RPC payload
schema and service context.

**Details**

The result is a `PartialRequest` suitable for storage or transport.

**Signature**

```ts
declare const serializeRequest: <Rpc extends Rpc.Any>(self: OutgoingRequest<Rpc>) => Effect.Effect<Envelope.PartialRequest, MalformedMessage>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Message.ts#L254)

Since v4.0.0