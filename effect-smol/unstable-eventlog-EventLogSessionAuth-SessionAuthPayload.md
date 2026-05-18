Package: `effect`<br />
Module: `EventLogSessionAuth`<br />

## EventLogSessionAuth.SessionAuthPayload

Payload fields that are canonicalized and signed during session
authentication.

**Signature**

```ts
export interface SessionAuthPayload {
  readonly remoteId: string | Uint8Array
  readonly challenge: Uint8Array
  readonly publicKey: string
  readonly signingPublicKey: Uint8Array
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogSessionAuth.ts#L78)

Since v4.0.0