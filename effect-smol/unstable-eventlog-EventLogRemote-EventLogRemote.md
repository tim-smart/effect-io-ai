Package: `effect`<br />
Module: `EventLogRemote`<br />

## EventLogRemote.EventLogRemote

Service representing a remote event-log replica.

It can write local entries to the remote, stream remote changes from a sequence
number, and run effects only after the supplied identity has authenticated.

**Signature**

```ts
declare class EventLogRemote
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogRemote.ts#L62)

Since v4.0.0