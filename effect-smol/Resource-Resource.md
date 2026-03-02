Package: `effect`<br />
Module: `Resource`<br />

## Resource.Resource

A `Resource` is a value loaded into memory that can be refreshed manually or
automatically according to a schedule.

**Signature**

```ts
export interface Resource<in out A, in out E = never> extends Pipeable {
  readonly [TypeId]: typeof TypeId
  readonly scopedRef: ScopedRef.ScopedRef<Exit.Exit<A, E>>
  readonly acquire: Effect.Effect<A, E>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Resource.ts#L23)

Since v2.0.0