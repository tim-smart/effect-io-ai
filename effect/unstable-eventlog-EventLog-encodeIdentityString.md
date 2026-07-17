Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.encodeIdentityString

Encodes an event-log identity as a base64url string containing the public key
and private key bytes.

**Signature**

```ts
declare const encodeIdentityString: (identity: Identity["Service"]) => string
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EventLog.ts#L470)

Since v4.0.0