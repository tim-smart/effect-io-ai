Package: `effect`<br />
Module: `Resource`<br />

## Resource.refresh

Re-runs this resource's acquisition effect and updates the current value.

**When to use**

Use to force an existing `Resource` to reacquire its value at a
caller-controlled point.

**Details**

When acquisition succeeds, refreshing replaces the value stored in the
resource's scoped reference and releases resources associated with the
previous value.

**Gotchas**

If acquisition fails, the returned effect fails and the previously stored
result is left as what `get` reads.

**See**

- `get` for reading the current stored value
- `manual` for resources refreshed only by caller action
- `auto` for schedule-driven automatic refreshes

**Signature**

```ts
declare const refresh: <A, E>(self: Resource<A, E>) => Effect.Effect<void, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Resource.ts#L183)

Since v2.0.0