Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.Identity

Event-log identity containing a public key and redacted private key material.

The identity is used by remote replication for authentication and by the
encryption service to derive signing and encryption keys.

**Signature**

```ts
declare class Identity
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLog.ts#L184)

Since v4.0.0