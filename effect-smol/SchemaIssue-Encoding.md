Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.Encoding

Issue produced when a schema transformation (encode/decode step) fails.

When to use:

- Inspect failures from `Schema.decodeTo` / `Schema.encodeTo`
  transformations.
- Walk the inner `issue` for the root cause of the transformation failure.

Behaviour:

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
    ast: AST.AST,
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L283)

Since v4.0.0