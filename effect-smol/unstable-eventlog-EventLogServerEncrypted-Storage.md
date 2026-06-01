Package: `effect`<br />
Module: `EventLogServerEncrypted`<br />

## EventLogServerEncrypted.Storage

Defines the backing store service used by the encrypted event-log server.

**When to use**

Use to provide durable encrypted event-log persistence for an encrypted
event-log server layer.

**Details**

It provides the server remote id, stores session authentication bindings,
persists encrypted entries, and streams encrypted changes for a public key and
store id.

**Signature**

```ts
declare class Storage
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerEncrypted.ts#L167)

Since v4.0.0