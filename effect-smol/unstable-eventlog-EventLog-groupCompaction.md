Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.groupCompaction

Registers a compaction handler for an event group.

**Details**

During remote replay, matching entries are decoded, grouped by primary key, and
passed to the compaction effect, which may write replacement entries.

**Signature**

```ts
declare const groupCompaction: <Events extends Event.Any, R>(group: EventGroup.EventGroup<Events>, effect: (options: { readonly primaryKey: string; readonly entries: ReadonlyArray<Entry>; readonly events: ReadonlyArray<Event.TaggedPayload<Events>>; readonly write: <Tag extends Event.Tag<Events>>(tag: Tag, payload: Event.PayloadWithTag<Events, Tag>) => Effect.Effect<void, never, Event.PayloadSchemaWithTag<Events, Tag>["EncodingServices"]>; }) => Effect.Effect<void, never, R>) => Layer.Layer<never, never, R | Event.PayloadSchema<Events>["DecodingServices"] | Registry>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLog.ts#L588)

Since v4.0.0