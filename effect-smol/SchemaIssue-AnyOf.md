Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.AnyOf

Issue produced when a value does not match *any* member of a union schema.

When to use:

- Inspect which union members were attempted and why each failed.
- `issues` may be empty when the union has no members or when the input does
  not pass the initial type guard.

Behaviour:

- `ast` is the `Union` AST node.
- `actual` is the raw input value (plain `unknown`).
- `issues` contains per-member failures. When empty, the formatter falls
  back to the union's `expected` annotation.

**See**

- `OneOf` — the opposite: *too many* members matched
- `Composite` — groups multiple issues under a non-union schema

**Signature**

```ts
declare class AnyOf { constructor(
    /**
     * The schema that caused the issue.
     */
    ast: AST.Union,
    /**
     * The input value that caused the issue.
     */
    actual: unknown,
    /**
     * The issues that occurred.
     */
    issues: ReadonlyArray<Issue>
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L724)

Since v4.0.0