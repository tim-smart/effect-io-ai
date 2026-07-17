Package: `effect`<br />
Module: `EventJournal`<br />

## EventJournal.layerMemory

Layer that provides an in-memory `EventJournal`.

**Gotchas**

All journal data is stored in process memory and is not persisted across layer
lifetimes.

**Signature**

```ts
declare const layerMemory: Layer.Layer<EventJournal, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EventJournal.ts#L503)

Since v4.0.0