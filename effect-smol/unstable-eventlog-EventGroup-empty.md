Package: `effect`<br />
Module: `EventGroup`<br />

## EventGroup.empty

Creates an empty event group used as the starting point for defining a group.

**When to use**

Use when you need the starting `EventGroup` value before adding event
definitions with `.add(...)`.

**Signature**

```ts
declare const empty: EventGroup<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventGroup.ts#L208)

Since v4.0.0