Package: `effect`<br />
Module: `Resource`<br />

## Resource.refresh

Refreshes the cache. This method will not return until either the refresh
is successful, or the refresh operation fails.

**Signature**

```ts
declare const refresh: <A, E>(self: Resource<A, E>) => Effect.Effect<void, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Resource.ts#L119)

Since v2.0.0