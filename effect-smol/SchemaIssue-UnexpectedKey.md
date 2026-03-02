Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.UnexpectedKey

Issue produced when an input object or tuple contains a key/index not
declared by the schema.

When to use:

- Detect excess properties during strict struct/tuple validation.
- Typically found inside a `Pointer` that indicates which key was
  unexpected.

Behaviour:

- `actual` is the raw value at the unexpected key (plain `unknown`).
- `ast` is the schema that was being validated against.
- `annotations` on `ast` may contain a custom `messageUnexpectedKey`.

**See**

- `MissingKey` — the opposite case (required key absent)
- `Pointer` — wraps this issue with the unexpected key's path

**Signature**

```ts
declare class UnexpectedKey { constructor(
    /**
     * The schema that caused the issue.
     */
    ast: AST.AST,
    /**
     * The input value that caused the issue.
     */
    actual: unknown
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L427)

Since v4.0.0