Package: `effect`<br />
Module: `EventLogServerUnencrypted`<br />

## EventLogServerUnencrypted.Storage

Storage service used by the unencrypted event-log server.

**Details**

It provides the server remote id, stores session authentication bindings,
allocates remote sequence numbers, persists entries, streams changes, and
exposes a transaction boundary.

**Signature**

```ts
declare class Storage
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerUnencrypted.ts#L344)

Since v4.0.0