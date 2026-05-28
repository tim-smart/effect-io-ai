Package: `effect`<br />
Module: `EventGroup`<br />

## EventGroup.empty

Creates an empty event group used as the starting point for defining a group.

**When to use**

Use when call `.add(...)` to add event definitions and build a typed `EventGroup`.

**Signature**

```ts
declare const empty: EventGroup<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventGroup.ts#L207)

Since v4.0.0