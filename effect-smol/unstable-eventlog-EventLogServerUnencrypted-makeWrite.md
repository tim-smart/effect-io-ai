Package: `effect`<br />
Module: `EventLogServerUnencrypted`<br />

## EventLogServerUnencrypted.makeWrite

Creates a typed server-side write function for events in the supplied
`EventLogSchema`.

**Signature**

```ts
declare const makeWrite: <Groups extends EventGroup.Any>(schema: EventLog.EventLogSchema<Groups>) => Effect.Effect<(<Tag extends EventGroup.Events<Groups>["tag"], Event extends Event.Any = Event.WithTag<EventGroup.Events<Groups>, Tag>>(options: { readonly storeId: StoreId; readonly event: Tag; readonly payload: Event.Payload<Event>; }) => Effect.Effect<Event.Success<Event>, EventLogServerStoreError | Event.Error<Event>>), never, EventLogServerUnencrypted>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerUnencrypted.ts#L108)

Since v4.0.0