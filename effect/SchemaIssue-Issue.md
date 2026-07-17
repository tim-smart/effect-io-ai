Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.Issue

The root discriminated union of all validation error nodes.

**When to use**

Use when typing the error channel in `Effect<A, Issue, R>` results from
schema parsing, or when writing custom formatters or issue-tree walkers.

**Details**

Every node has a `_tag` field for pattern-matching. The union includes both
terminal `Leaf` types and composite types that wrap inner issues:
`Filter`, `Encoding`, `Pointer`, `Composite`,
`AnyOf`. All `Issue` instances have a `toString()` that delegates to
the default formatter, so `String(issue)` produces a human-readable message.

**See**

- `Leaf` — the terminal subset
- `isIssue` — type guard
- `getActual` — extract the actual value from any issue

**Signature**

```ts
type Issue = | Leaf
  // composite
  | Filter
  | Encoding
  | Pointer
  | Composite
  | AnyOf
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaIssue.ts#L109)

Since v4.0.0