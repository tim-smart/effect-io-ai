Package: `effect`<br />
Module: `Resource`<br />

## Resource.Resource

A `Resource` is a value loaded into memory that can be refreshed manually or
automatically according to a schedule.

**When to use**

Use to model a scoped value whose latest acquisition result is kept available
for repeated reads and can be refreshed manually or on a schedule.

**See**

- `manual` for creating a resource refreshed by the caller
- `auto` for creating a resource refreshed according to a schedule
- `get` for reading the currently stored acquisition result
- `refresh` for forcing a new acquisition

**Signature**

```ts
export interface Resource<in out A, in out E = never> extends Pipeable {
  readonly [TypeId]: typeof TypeId
  readonly scopedRef: ScopedRef.ScopedRef<Exit.Exit<A, E>>
  readonly acquire: Effect.Effect<A, E>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Resource.ts#L41)

Since v2.0.0