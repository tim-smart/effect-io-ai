Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Filter

A single validation check attached to an AST node.

- `run` — the validation function. Returns `undefined` on success, or an
  `Issue` on failure.
- `annotations` — optional filter-level metadata (expected message, meta
  tags, arbitrary constraint hints).
- `aborted` — when `true`, parsing stops immediately after this filter
  fails (no further checks run).

Use `.annotate()` to add metadata and `.abort()` to mark as aborting.
Combine with another check via `.and()` to form a `FilterGroup`.

**See**

- `FilterGroup`
- `Check`
- `isPattern`

**Signature**

```ts
declare class Filter<E> { constructor(
    run: (input: E, self: AST, options: ParseOptions) => Issue.Issue | undefined,
    annotations: Schema.Annotations.Filter | undefined = undefined,
    /**
     * Whether the parsing process should be aborted after this check has failed.
     */
    aborted: boolean = false
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L2468)

Since v4.0.0