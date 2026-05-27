Package: `effect`<br />
Module: `EventLogServerEncrypted`<br />

## EventLogServerEncrypted.Storage

Storage service used by the encrypted event-log server.

**Details**

It provides the server remote id, stores session authentication bindings,
persists encrypted entries, and streams encrypted changes for a public key and
store id.

**Signature**

```ts
declare class Storage
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerEncrypted.ts#L163)

Since v4.0.0