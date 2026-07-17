Package: `effect`<br />
Module: `EventLogSessionAuth`<br />

## EventLogSessionAuth.signSessionAuthPayload

Encodes a session authentication payload in canonical form and signs it with an
Ed25519 private key.

**Signature**

```ts
declare const signSessionAuthPayload: (options: SessionAuthPayload & { readonly signingPrivateKey: Uint8Array; }) => Effect.Effect<Uint8Array<ArrayBuffer>, EventLogSessionAuthError, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EventLogSessionAuth.ts#L443)

Since v4.0.0