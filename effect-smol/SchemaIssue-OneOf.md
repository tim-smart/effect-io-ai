Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.OneOf

Issue produced when a value matches *multiple* members of a union that is
configured to allow exactly one match (oneOf mode).

When to use:

- Detect ambiguous union matches when `oneOf` validation is enabled.
- Inspect `successes` to see which members matched.

Behaviour:

- `ast` is the `Union` AST node.
- `actual` is the raw input value (plain `unknown`).
- `successes` lists the AST nodes of each member that accepted the input.
- The default formatter renders this as
  `"Expected exactly one member to match the input <actual>"`.

**See**

- `AnyOf` — the opposite: *no* members matched

**Signature**

```ts
declare class OneOf { constructor(
    /**
     * The schema that caused the issue.
     */
    ast: AST.Union,
    /**
     * The input value that caused the issue.
     */
    actual: unknown,
    /**
     * The schemas that were successful.
     */
    successes: ReadonlyArray<AST.AST>
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L782)

Since v4.0.0