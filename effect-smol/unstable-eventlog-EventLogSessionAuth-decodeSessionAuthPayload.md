Package: `effect`<br />
Module: `EventLogSessionAuth`<br />

## EventLogSessionAuth.decodeSessionAuthPayload

Decodes a canonical session authentication payload.

**Details**

The decoder validates the context field, UTF-8 fields, signing public key
length, and rejects truncated or trailing bytes.

**Signature**

```ts
declare const decodeSessionAuthPayload: (payload: Uint8Array<ArrayBufferLike>) => Effect.Effect<SessionAuthPayload, EventLogSessionAuthError, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogSessionAuth.ts#L313)

Since v4.0.0