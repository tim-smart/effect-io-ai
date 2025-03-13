Package: `effect`<br />
Module: `Resource`<br />

## Resource.Resource

A `Resource` is a possibly resourceful value that is loaded into memory, and
which can be refreshed either manually or automatically.

**Signature**

```ts
export interface Resource<in out A, in out E = never> extends Effect.Effect<A, E>, Resource.Variance<A, E> {
  /** @internal */
  readonly scopedRef: ScopedRef.ScopedRef<Exit.Exit<A, E>>
  /** @internal */
  readonly acquire: Effect.Effect<A, E, Scope.Scope>

  readonly [Unify.typeSymbol]?: unknown
  readonly [Unify.unifySymbol]?: ResourceUnify<this>
  readonly [Unify.ignoreSymbol]?: ResourceUnifyIgnore
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Resource.ts#L32)

Since v2.0.0