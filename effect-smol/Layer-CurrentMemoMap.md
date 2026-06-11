Package: `effect`<br />
Module: `Layer`<br />

## Layer.CurrentMemoMap

Context service for the current `MemoMap` used in layer construction.

**When to use**

Use when building custom layer operations that need to access the current
memoization map from the fiber context.

**Details**

This service wraps a `MemoMap` as a `Context.Service`, making it available
for dependency injection during layer construction.

**See**

- `MemoMap` the memoization map type wrapped by this service

**Signature**

```ts
declare class CurrentMemoMap
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L567)

Since v3.13.0