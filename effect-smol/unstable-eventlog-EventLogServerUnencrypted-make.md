Package: `effect`<br />
Module: `EventLogServerUnencrypted`<br />

## EventLogServerUnencrypted.make

Creates the `EventLogServerUnencrypted` service from the configured storage and
registered event handlers.

**Signature**

```ts
declare const make: Effect.Effect<{ readonly makeWrite: <Groups extends EventGroup.Any>(schema: EventLog.EventLogSchema<Groups>) => <Tag extends EventGroup.Events<Groups>["tag"], Event extends Event.Any = Event.WithTag<EventGroup.Events<Groups>, Tag>>(options: { readonly storeId: StoreId; readonly event: Tag; readonly payload: Event.Payload<Event>; }) => Effect.Effect<Event.Success<Event>, EventLogServerStoreError | Event.Error<Event>>; }, never, Storage | EventLog.Registry>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerUnencrypted.ts#L651)

Since v4.0.0