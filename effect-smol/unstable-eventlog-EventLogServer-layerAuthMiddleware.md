Package: `effect`<br />
Module: `EventLogServer`<br />

## EventLogServer.layerAuthMiddleware

Provides RPC authentication middleware that reads the authenticated
`EventLog.Identity` from client annotations.

Requests without an identity fail with a forbidden `EventLogProtocolError`.

**Signature**

```ts
declare const layerAuthMiddleware: Layer.Layer<EventLogAuthentication, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServer.ts#L56)

Since v4.0.0