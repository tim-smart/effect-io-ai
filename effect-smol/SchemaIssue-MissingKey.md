Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.MissingKey

Represents a schema issue produced when a required key or tuple index is missing from the input.

**When to use**

Use when you need to detect absent fields in struct/tuple validation.

**Details**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L319)

Since v4.0.0