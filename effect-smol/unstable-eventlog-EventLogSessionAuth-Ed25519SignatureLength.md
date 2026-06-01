Package: `effect`<br />
Module: `EventLogSessionAuth`<br />

## EventLogSessionAuth.Ed25519SignatureLength

Defines the required byte length for Ed25519 signatures used in session authentication.

**When to use**

Use when implementing session-auth verification that must reject signatures
with a non-canonical byte length before cryptographic checking.

**Signature**

```ts
declare const Ed25519SignatureLength: 64
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogSessionAuth.ts#L87)

Since v4.0.0