Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.FilterGroup

A composite validation check grouping multiple `Check` values.

Created by calling `.and()` on a `Filter` or another `FilterGroup`.
All inner checks are run; failures from aborted filters still stop
evaluation.

**See**

- `Filter`
- `Check`

**Signature**

```ts
declare class FilterGroup<E> { constructor(
    checks: readonly [Check<E>, ...Array<Check<E>>],
    annotations: Schema.Annotations.Filter | undefined = undefined
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L2504)

Since v4.0.0