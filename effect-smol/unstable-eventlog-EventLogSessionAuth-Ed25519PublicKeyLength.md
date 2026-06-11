Package: `effect`<br />
Module: `EventLogSessionAuth`<br />

## EventLogSessionAuth.Ed25519PublicKeyLength

Defines the required byte length for raw Ed25519 public keys used in session
authentication.

**When to use**

Use when implementing session-auth serialization or validation that must
reject public keys with a non-canonical raw byte length.

**Signature**

```ts
declare const Ed25519PublicKeyLength: 32
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogSessionAuth.ts#L45)

Since v4.0.0