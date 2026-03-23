Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Checks

Non-empty array of validation `Check` values attached to an AST node
via `Base.checks`.

Checks are run after basic type matching succeeds. They represent
refinements like `minLength`, `pattern`, `int`, etc.

**See**

- `Check`
- `Filter`
- `FilterGroup`

**Signature**

```ts
type Checks = readonly [Check<any>, ...Array<Check<any>>]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L503)

Since v4.0.0