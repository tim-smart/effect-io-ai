Package: `effect`<br />
Module: `EventLogEncryption`<br />

## EventLogEncryption.EncryptedEntry

Schema for an encrypted journal entry paired with the id of the original
entry.

**Signature**

```ts
declare const EncryptedEntry: Schema.Struct<{ readonly entryId: Schema.brand<Schema.instanceOf<Uint8Array<ArrayBuffer>, Uint8Array<ArrayBuffer>>, "effect/eventlog/EventJournal/EntryId">; readonly encryptedEntry: Transferable.Transferable<Schema.instanceOf<Uint8Array<ArrayBuffer>, Uint8Array<ArrayBuffer>>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogEncryption.ts#L28)

Since v4.0.0