Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.MissingKey

Issue produced when a required key or tuple index is missing from the input.

When to use:

- Detect absent fields in struct/tuple validation.
- Typically found inside a `Pointer` that indicates which key is
  missing.

Behaviour:

- Has no `actual` value — `getActual` returns `Option.none()`.
- `annotations` may contain a custom `messageMissingKey` for formatting.

**See**

- `Pointer` — wraps this issue with the missing key's path
- `UnexpectedKey` — the opposite case (extra key present)

**Signature**

```ts
declare class MissingKey { constructor(
    /**
     * The metadata for the issue.
     */
    annotations: Schema.Annotations.Key<unknown> | undefined
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L388)

Since v4.0.0