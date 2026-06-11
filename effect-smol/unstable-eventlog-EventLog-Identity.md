Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.Identity

Context service for an event-log identity containing a public key and redacted
private key material.

**Details**

The identity is used by remote replication for authentication and by the
encryption service to derive signing and encryption keys.

**Signature**

```ts
declare class Identity
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLog.ts#L181)

Since v4.0.0