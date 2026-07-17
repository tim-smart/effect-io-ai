Package: `effect`<br />
Module: `EntityResource`<br />

## EntityResource.EntityResource

A resource acquired inside a cluster entity and kept alive across restarts.

**Details**

`get` acquires or reuses the resource in the caller's scope, while `close`
invalidates it so its close scope can be released.

**Signature**

```ts
export interface EntityResource<out A, out E = never> {
  readonly [TypeId]: TypeId
  readonly get: Effect.Effect<A, E, Scope.Scope>
  readonly close: Effect.Effect<void>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EntityResource.ts#L51)

Since v4.0.0