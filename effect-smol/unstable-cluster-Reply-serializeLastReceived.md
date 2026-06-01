Package: `effect`<br />
Module: `Reply`<br />

## Reply.serializeLastReceived

Serializes an outgoing request's last received reply when one exists, returning
`None` when no reply has been received and refailing encoding errors as
`MalformedMessage`.

**Signature**

```ts
declare const serializeLastReceived: <R extends Rpc.Any>(self: OutgoingRequest<R>) => Effect.Effect<Option.Option<Encoded>, MalformedMessage>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Reply.ts#L454)

Since v4.0.0