Package: `effect`<br />
Module: `EventLogSessionAuth`<br />

## EventLogSessionAuth.signSessionAuthPayloadBytes

Signs canonical session authentication payload bytes with an Ed25519 private
key.

**Details**

The private key must be PKCS#8-encoded bytes importable by `SubtleCrypto`.

**Signature**

```ts
declare const signSessionAuthPayloadBytes: (options: { readonly payload: Uint8Array; readonly signingPrivateKey: Uint8Array; }) => Effect.Effect<Uint8Array<ArrayBuffer>, EventLogSessionAuthError, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogSessionAuth.ts#L342)

Since v4.0.0