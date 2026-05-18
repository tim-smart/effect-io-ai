Package: `effect`<br />
Module: `EntityResource`<br />

## EntityResource.EntityResource

A resource acquired inside a cluster entity and kept alive across restarts.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EntityResource.ts#L63)

Since v4.0.0