Package: `effect`<br />
Module: `Resource`<br />

## Resource.refresh

Re-runs this resource's acquisition effect and updates the current value.

**Details**

Refreshing replaces the value stored in the resource's scoped reference and
releases resources associated with the previous value. If acquisition fails,
the returned effect fails with the acquisition error.

**Signature**

```ts
declare const refresh: <A, E>(self: Resource<A, E>) => Effect.Effect<void, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Resource.ts#L149)

Since v2.0.0