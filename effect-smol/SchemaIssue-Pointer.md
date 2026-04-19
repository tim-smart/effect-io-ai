Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.Pointer

Wraps an inner `Issue` with a property-key path, indicating *where* in
a nested structure the error occurred.

When to use:

- Walk the issue tree to accumulate path segments for error reporting.
- Match on `_tag === "Pointer"` when flattening nested issues.

Behaviour:

- `path` is an array of property keys (strings, numbers, or symbols).
- Has no `actual` value — `getActual` returns `Option.none()`.
- Formatters concatenate nested `Pointer` paths into a single path like
  `["a"]["b"][0]`.

**See**

- `getActual` — returns `Option.none()` for `Pointer`
- `Composite` — groups multiple issues under one schema node

**Signature**

```ts
declare class Pointer { constructor(
    /**
     * The path to the location in the input that caused the issue.
     */
    path: ReadonlyArray<PropertyKey>,
    /**
     * The issue that occurred.
     */
    issue: Issue
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L341)

Since v4.0.0