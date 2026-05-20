Package: `effect`<br />
Module: `Layer`<br />

## Layer.LayerUnify

Type-level hook that allows `Layer` values to participate in `Unify`
inference.

**Details**

This is used by Effect's pipe and unification machinery to preserve the
provided services, error, and requirements of a `Layer`.

**Signature**

```ts
export interface LayerUnify<A extends { [Unify.typeSymbol]?: any }> {
  Layer?: () => A[Unify.typeSymbol] extends Layer<any, any, any> | infer _ ? Layer<
      Success<Extract<A[Unify.typeSymbol], Any>>,
      Error<Extract<A[Unify.typeSymbol], Any>>,
      Services<Extract<A[Unify.typeSymbol], Any>>
    >
    : never
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L87)

Since v4.0.0