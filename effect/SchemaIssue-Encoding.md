Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.Encoding

Represents a schema issue produced when a schema transformation (encode/decode step) fails.

**When to use**

Use when you need to inspect failures from `Schema.decodeTo` / `Schema.encodeTo`
  transformations.

**Details**

- `ast` is the AST node for the transformation that failed.
- `actual` is `Option.some(value)` when the input was present, or
  `Option.none()` when it was absent.
- `issue` is the inner issue describing the failure.

**See**

- `Filter` — failure from a refinement check (not a transformation)
- `Composite` — multiple issues from a single schema node

**Signature**

```ts
declare class Encoding { constructor(
    /**
     * The schema that caused the issue.
     */
    ast: SchemaAST.AST,
    /**
     * The input value that caused the issue.
     */
    actual: Option.Option<unknown>,
    /**
     * The issue that occurred.
     */
    issue: Issue
  ) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaIssue.ts#L216)

Since v4.0.0