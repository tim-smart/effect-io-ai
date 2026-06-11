Package: `effect`<br />
Module: `EventLogSessionAuth`<br />

## EventLogSessionAuth.AuthPayloadContext

Defines the domain-separation string embedded in canonical session
authentication payloads.

**When to use**

Use when you need the domain-separation string used to build canonical
event-log session authentication payloads.

**Signature**

```ts
declare const AuthPayloadContext: "eventlog-auth-v1"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogSessionAuth.ts#L31)

Since v4.0.0