Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.makeClient

Creates a typed client function for writing events defined by an
`EventLogSchema`.

**Details**

The returned function delegates to the `EventLog` service and preserves each
event's success and error types.

**Signature**

```ts
declare const makeClient: <Groups extends EventGroup.Any>(schema: EventLogSchema<Groups>) => Effect.Effect<(<Tag extends Event.Tag<EventGroup.Events<Groups>>>(event: Tag, payload: Event.PayloadWithTag<EventGroup.Events<Groups>, Tag>) => Effect.Effect<Event.SuccessWithTag<EventGroup.Events<Groups>, Tag>, Event.ErrorWithTag<EventGroup.Events<Groups>, Tag> | EventJournalError>), never, EventLog>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLog.ts#L1028)

Since v4.0.0