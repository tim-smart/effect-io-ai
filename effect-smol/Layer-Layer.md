Package: `effect`<br />
Module: `Layer`<br />

## Layer.Layer

A Layer describes how to build one or more services for dependency injection.

A Layer<ROut, E, RIn> represents:
- ROut: The services this layer provides
- E: The possible errors during layer construction
- RIn: The services this layer requires as dependencies

**Signature**

```ts
export interface Layer<in ROut, out E = never, out RIn = never> extends Variance<ROut, E, RIn>, Pipeable {
  /** @internal */
  build(memoMap: MemoMap, scope: Scope.Scope): Effect<ServiceMap.ServiceMap<ROut>, E, RIn>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L54)

Since v2.0.0