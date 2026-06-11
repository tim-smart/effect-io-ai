Package: `effect`<br />
Module: `EventLogRemote`<br />

## EventLogRemote.EventLogRemoteClient

Service that provides a typed RPC client for the `EventLogRemoteRpcs` protocol.

**When to use**

Use to provide the RPC client used by remote event-log replicas to
authenticate, write entries, and subscribe to changes.

**Signature**

```ts
declare class EventLogRemoteClient
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogRemote.ts#L125)

Since v4.0.0