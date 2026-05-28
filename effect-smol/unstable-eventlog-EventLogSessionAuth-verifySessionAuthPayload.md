Package: `effect`<br />
Module: `EventLogSessionAuth`<br />

## EventLogSessionAuth.verifySessionAuthPayload

Encodes a session authentication payload in canonical form and verifies its
Ed25519 signature.

**Signature**

```ts
declare const verifySessionAuthPayload: (options: SessionAuthPayload & { readonly signature: Uint8Array; }) => Effect.Effect<boolean, EventLogSessionAuthError, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogSessionAuth.ts#L493)

Since v4.0.0