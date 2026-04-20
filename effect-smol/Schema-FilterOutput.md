Package: `effect`<br />
Module: `Schema`<br />

## Schema.FilterOutput

The value a filter predicate (see `makeFilter`) may return.

Each shape is normalized into an `Issue.Issue` (or `undefined` for
success) before being attached to the parse result:

- `undefined`: success. The input satisfies the filter.
- `true`: success. Equivalent to `undefined`, useful when the predicate is
  a plain boolean expression.
- `false`: generic failure. Produces an `Issue.InvalidValue` wrapping
  the input, with no custom message.
- `FilterIssue`: a single failure. See `FilterIssue` for the
  shapes (`string`, `Issue.Issue`, or `{ path, issue }`).
- `ReadonlyArray<FilterIssue>`: several failures reported together. An
  empty array is treated as success; a single-element array is equivalent
  to returning that element directly; otherwise the entries are grouped
  into an `Issue.Composite`.

**Signature**

```ts
type FilterOutput = | undefined
  | boolean
  | FilterIssue
  | ReadonlyArray<FilterIssue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5046)

Since v4.0.0