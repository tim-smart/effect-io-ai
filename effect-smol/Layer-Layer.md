Package: `effect`<br />
Module: `Layer`<br />

## Layer.Layer

A `Layer` describes how to build one or more services for dependency injection.

**When to use**

Use to model construction of application services for dependency injection,
especially when services have dependencies, can fail during construction, or
need scoped setup and release.

**Details**

A `Layer<ROut, E, RIn>` represents `ROut` as the services this layer
provides, `E` as the possible errors during layer construction, and `RIn` as
the services this layer requires as dependencies.

**Signature**

```ts
export interface Layer<in ROut, out E = never, out RIn = never> extends Variance<ROut, E, RIn>, Pipeable {
  /** @internal */
  build(memoMap: MemoMap, scope: Scope.Scope): Effect<Context.Context<ROut>, E, RIn>
  [Unify.typeSymbol]?: unknown
  [Unify.unifySymbol]?: LayerUnify<this>
  [Unify.ignoreSymbol]?: LayerUnifyIgnore
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L86)

Since v2.0.0