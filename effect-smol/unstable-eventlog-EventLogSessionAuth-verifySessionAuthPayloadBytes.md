Package: `effect`<br />
Module: `EventLogSessionAuth`<br />

## EventLogSessionAuth.verifySessionAuthPayloadBytes

Verifies an Ed25519 signature for canonical session authentication payload
bytes.

**Details**

The payload, signing public key, and signature lengths are validated before
calling `SubtleCrypto.verify`.

**Signature**

```ts
declare const verifySessionAuthPayloadBytes: (options: { readonly payload: Uint8Array; readonly signingPublicKey: Uint8Array; readonly signature: Uint8Array; }) => Effect.Effect<boolean, EventLogSessionAuthError, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogSessionAuth.ts#L390)

Since v4.0.0