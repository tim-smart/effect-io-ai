Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.Deferred

A `Deferred` represents an asynchronous variable that can be set exactly
once, with the ability for an arbitrary number of fibers to suspend (by
calling `Deferred.await`) and automatically resume when the variable is set.

`Deferred` can be used for building primitive actions whose completions
require the coordinated action of multiple fibers, and for building
higher-level concurrent or asynchronous structures.

**Signature**

```ts
export interface Deferred<in out A, in out E = never> extends Effect.Effect<A, E>, Deferred.Variance<A, E> {
  /** @internal */
  readonly state: MutableRef.MutableRef<internal.State<A, E>>
  /** @internal */
  readonly blockingOn: FiberId.FiberId
  readonly [Unify.typeSymbol]?: unknown
  readonly [Unify.unifySymbol]?: DeferredUnify<this>
  readonly [Unify.ignoreSymbol]?: DeferredUnifyIgnore
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L40)

Since v2.0.0