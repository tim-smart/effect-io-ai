Package: `effect`<br />
Module: `Resource`<br />

## Resource.manual

Creates a `Resource` that must be refreshed manually.

**When to use**

Use when you need manual control over resource refresh timing rather than an
automatic schedule.

**See**

- `auto` for schedule-driven automatic refreshes
- `refresh` to manually trigger a resource refresh

**Signature**

```ts
declare const manual: <A, E, R>(acquire: Effect.Effect<A, E, R>) => Effect.Effect<Resource<A, E>, never, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Resource.ts#L99)

Since v2.0.0