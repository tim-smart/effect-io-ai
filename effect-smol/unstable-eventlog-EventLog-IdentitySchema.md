Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.IdentitySchema

Schema for an event-log identity with a string public key and redacted
base64-encoded private key bytes.

**Signature**

```ts
declare const IdentitySchema: Schema.Struct<{ readonly publicKey: Schema.String; readonly privateKey: Schema.decodeTo<Schema.Redacted<Schema.Uint8Array>, Schema.Uint8ArrayFromBase64, never, never>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLog.ts#L429)

Since v4.0.0