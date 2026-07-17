Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.groupReactivity

Registers reactivity keys to invalidate when events from a group are written or
replayed.

**Details**

Pass a single key list for all events or a mapping from event tag to key list.

**Signature**

```ts
declare const groupReactivity: <Events extends Event.Any>(group: EventGroup.EventGroup<Events>, keys: { readonly [Tag in Event.Tag<Events>]?: ReadonlyArray<string>; } | ReadonlyArray<string>) => Layer.Layer<never, never, Registry>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EventLog.ts#L665)

Since v4.0.0