Package: `effect`<br />
Module: `Result`<br />

## Result.ResultUnify

Type-level utility for unifying `Result` types in generic contexts.

This is an internal interface used by the Effect type system. You typically
do not need to reference it directly.

**Signature**

```ts
export interface ResultUnify<T extends { [Unify.typeSymbol]?: any }> {
  Result?: () => T[Unify.typeSymbol] extends Result<infer A, infer E> | infer _ ? Result<A, E> : never
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L219)

Since v4.0.0