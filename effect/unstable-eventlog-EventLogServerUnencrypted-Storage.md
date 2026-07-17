Package: `effect`<br />
Module: `EventLogServerUnencrypted`<br />

## EventLogServerUnencrypted.Storage

Defines the backing store service used by the unencrypted event-log server.

**When to use**

Use to provide durable event-log persistence for an unencrypted event-log
server layer.

**Details**

It provides the server remote id, stores session authentication bindings,
allocates remote sequence numbers, persists entries, streams changes, and
exposes a transaction boundary.

**Signature**

```ts
declare class Storage
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EventLogServerUnencrypted.ts#L358)

Since v4.0.0