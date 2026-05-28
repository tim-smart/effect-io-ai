Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.AnyOf

Represents a schema issue produced when a value does not match *any* member of a union schema.

**When to use**

Use when you need to inspect which union members were attempted and why each
failed.

**Details**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L717)

Since v4.0.0