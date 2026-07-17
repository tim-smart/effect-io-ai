Package: `effect`<br />
Module: `EventLogEncryption`<br />

## EventLogEncryption.EncryptedRemoteEntry

Type of an encrypted remote entry, including its remote sequence number,
initialization vector, entry id, and encrypted entry bytes.

**Signature**

```ts
export interface EncryptedRemoteEntry extends Schema.Schema.Type<typeof EncryptedRemoteEntry> {}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EventLogEncryption.ts#L40)

Since v4.0.0