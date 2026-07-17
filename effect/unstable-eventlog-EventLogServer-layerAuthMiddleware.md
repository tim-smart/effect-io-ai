Package: `effect`<br />
Module: `EventLogServer`<br />

## EventLogServer.layerAuthMiddleware

Provides RPC authentication middleware that reads the authenticated
`EventLog.Identity` from client annotations.

**Details**

Requests without an identity fail with a forbidden `EventLogProtocolError`.

**Signature**

```ts
declare const layerAuthMiddleware: Layer.Layer<EventLogAuthentication, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EventLogServer.ts#L49)

Since v4.0.0