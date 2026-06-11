Package: `effect`<br />
Module: `Event`<br />

## Event.ExcludeTag

Removes event definitions with the specified tag from an event union.

**Signature**

```ts
type ExcludeTag<Events, Tag> = Exclude<Events, { readonly tag: Tag }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Event.ts#L338)

Since v4.0.0