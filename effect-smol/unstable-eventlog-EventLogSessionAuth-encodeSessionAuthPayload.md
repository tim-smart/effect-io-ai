Package: `effect`<br />
Module: `EventLogSessionAuth`<br />

## EventLogSessionAuth.encodeSessionAuthPayload

Canonical payload format uses ordered big-endian length-prefixed fields:

1. context (fixed: eventlog-auth-v1)
2. remoteId
3. challenge bytes
4. publicKey
5. signingPublicKey bytes

**Signature**

```ts
declare const encodeSessionAuthPayload: (payload: SessionAuthPayload) => Effect.Effect<Uint8Array<ArrayBuffer>, EventLogSessionAuthError, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogSessionAuth.ts#L220)

Since v4.0.0