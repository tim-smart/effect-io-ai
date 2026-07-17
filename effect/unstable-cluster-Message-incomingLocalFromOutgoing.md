Package: `effect`<br />
Module: `Message`<br />

## Message.incomingLocalFromOutgoing

Converts an outgoing message into a locally deliverable incoming message.

**Details**

Request messages keep their decoded payload and response callback, while
control envelopes are wrapped as incoming envelopes.

**Signature**

```ts
declare const incomingLocalFromOutgoing: <R extends Rpc.Any>(self: Outgoing<R>) => IncomingLocal<R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Message.ts#L62)

Since v4.0.0