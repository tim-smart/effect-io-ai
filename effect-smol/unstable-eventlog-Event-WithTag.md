Package: `effect`<br />
Module: `Event`<br />

## Event.WithTag

Extracts the event definition with the specified tag from an event union.

**Signature**

```ts
type WithTag<Events, Tag> = Extract<Events, { readonly tag: Tag }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Event.ts#L325)

Since v4.0.0