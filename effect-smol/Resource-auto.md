Package: `effect`<br />
Module: `Resource`<br />

## Resource.auto

Creates a `Resource` that refreshes automatically according to the supplied
schedule.

**When to use**

Use when a resource should refresh in the background according to a schedule
for the lifetime of its scope.

**See**

- `manual` for caller-controlled refresh timing
- `refresh` to trigger a refresh explicitly

**Signature**

```ts
declare const auto: <A, E, R, Out, E2, R2>(acquire: Effect.Effect<A, E, R>, policy: Schedule.Schedule<Out, unknown, E2, R2>) => Effect.Effect<Resource<A, E>, never, R | R2 | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Resource.ts#L153)

Since v2.0.0