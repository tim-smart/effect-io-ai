Package: `effect`<br />
Module: `Schema`<br />

## Schema.FilterIssue

A single failure reported by a filter predicate. Used as the element type
of the array arm of `FilterOutput`, and also accepted on its own.

- `string`: failure with that string as the message. Produces an
  `Issue.InvalidValue` wrapping the input, with the string used as
  the issue's `message` annotation.
- `Issue.Issue`: a fully-formed issue, returned as-is.
- `{ path, issue }`: failure attached to a nested path. `issue` is either
  a `string` (wrapped in an `Issue.InvalidValue`) or a full
  `Issue.Issue`; the result is wrapped in an `Issue.Pointer`
  at the given `path`.

**Signature**

```ts
type FilterIssue = string | Issue.Issue | {
  readonly path: ReadonlyArray<PropertyKey>
  readonly issue: string | Issue.Issue
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5020)

Since v4.0.0