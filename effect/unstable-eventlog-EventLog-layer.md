Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.layer

Combines event-group handler layers with the `EventLog` runtime for a schema.

**When to use**

Use when you need one layer that installs the shared `EventLog` runtime for
an `EventLogSchema` and registers an event-group handler layer for typed
writes.

**Details**

The supplied handler layer is provided with `layerEventLog`. The returned
layer provides `EventLog | Registry`, preserves the handler layer's error
type, and still requires its remaining services plus `EventJournal` and
`Identity`.

**Gotchas**

The schema argument does not register handlers by itself. Handler registration
comes from the supplied layer, and writing an event without a registered
handler dies with `Event handler not found for: "<tag>"`.

**See**

- `schema` for creating the schema argument from event groups
- `group` for building the handler layer consumed by this layer
- `layerEventLog` for installing the runtime and registry without combining a handler layer

**Signature**

```ts
declare const layer: <Groups extends EventGroup.Any, E, R>(_schema: EventLogSchema<Groups>, layer: Layer.Layer<EventGroup.ToService<Groups>, E, R>) => Layer.Layer<EventLog | Registry, E, Exclude<R, EventLog | Registry> | EventJournal | Identity>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EventLog.ts#L984)

Since v4.0.0