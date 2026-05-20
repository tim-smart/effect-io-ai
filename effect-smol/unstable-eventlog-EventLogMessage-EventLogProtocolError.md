Package: `effect`<br />
Module: `EventLogMessage`<br />

## EventLogMessage.EventLogProtocolError

Structured error returned by event-log remote RPCs.

**Details**

It records the request tag, optional identity and store information, a protocol
error code, and a human-readable message.

**Signature**

```ts
declare class EventLogProtocolError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogMessage.ts#L73)

Since v4.0.0