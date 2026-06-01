Package: `effect`<br />
Module: `EventLogServerUnencrypted`<br />

## EventLogServerUnencrypted.make

Creates the `EventLogServerUnencrypted` service from the configured storage and
registered event handlers.

**When to use**

Use when you need the unencrypted event-log server service from provided
`Storage` and an event-log `Registry`.

**Details**

The constructed service exposes `makeWrite`, which builds a typed server-side
write function from an `EventLogSchema`. Each write encodes the payload with
the event schema, runs the registered handler, and persists the generated
entry inside `Storage.withTransaction`.

**Gotchas**

The write function dies if the requested event tag is not present in the
schema passed to `makeWrite`; it does not report that case as a typed failure.

**See**

- `makeWrite` for the accessor that retrieves the typed server-side write function from the service environment
- `layerServer` for the layer form that provides this service together with an event-log `Registry`

**Signature**

```ts
declare const make: Effect.Effect<{ readonly makeWrite: <Groups extends EventGroup.Any>(schema: EventLog.EventLogSchema<Groups>) => <Tag extends EventGroup.Events<Groups>["tag"], Event extends Event.Any = Event.WithTag<EventGroup.Events<Groups>, Tag>>(options: { readonly storeId: StoreId; readonly event: Tag; readonly payload: Event.Payload<Event>; }) => Effect.Effect<Event.Success<Event>, EventLogServerStoreError | Event.Error<Event>>; }, never, Storage | EventLog.Registry>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerUnencrypted.ts#L726)

Since v4.0.0