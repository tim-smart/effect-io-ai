Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.Composite

Represents a schema issue that groups multiple child issues under a single schema node.

**When to use**

Use when you need to walk the issue tree for struct/tuple schemas that collect
all field errors rather than failing on the first.

**Details**

- `issues` is a non-empty readonly array (at least one child).
- `actual` is `Option.some(value)` when the input was present, or
  `Option.none()` when absent.
- Formatters flatten `Composite` by recursing into each child.

**See**

- `AnyOf` — used for union no-match errors (similar but different semantics)
- `Pointer` — adds path context to individual issues

**Signature**

```ts
declare class Composite { constructor(
    /**
     * The schema that caused the issue.
     */
    ast: SchemaAST.AST,
    /**
     * The input value that caused the issue.
     */
    actual: Option.Option<unknown>,
    /**
     * The issues that occurred.
     */
    issues: readonly [Issue, ...Array<Issue>]
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L474)

Since v3.10.0