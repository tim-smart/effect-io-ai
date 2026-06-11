Package: `effect`<br />
Module: `EventLogSessionAuth`<br />

## EventLogSessionAuth.verifySessionAuthenticateRequest

Verifies an authentication request by requiring the `Ed25519` algorithm and
checking the signature over the canonical session authentication payload.

**Signature**

```ts
declare const verifySessionAuthenticateRequest: (options: { readonly remoteId: string | Uint8Array; readonly challenge: Uint8Array; readonly publicKey: string; readonly signingPublicKey: Uint8Array; readonly signature: Uint8Array; readonly algorithm: string; }) => Effect.Effect<boolean, EventLogSessionAuthError, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogSessionAuth.ts#L502)

Since v4.0.0