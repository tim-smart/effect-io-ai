Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.EventLog

Service for writing typed event-log events through registered handlers.

**Details**

`write` encodes the event payload, runs the matching handler, commits the entry
only when the handler succeeds, and exposes access to the underlying journal
entries and destroy operation.

**Signature**

```ts
declare class EventLog
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLog.ts#L72)

Since v4.0.0