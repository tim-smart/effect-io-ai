Package: `effect`<br />
Module: `EventLogRemote`<br />

## EventLogRemote.EventLogRemote

Service that represents a remote event-log replica.

**When to use**

Use to access or provide a remote event-log replica that can write local
entries and stream remote changes.

**Details**

It can write local entries to the remote, stream remote changes from a sequence
number, and run effects only after the supplied identity has authenticated.

**Signature**

```ts
declare class EventLogRemote
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EventLogRemote.ts#L59)

Since v4.0.0