Package: `effect`<br />
Module: `Schema`<br />

## Schema.FilterIssue

A single failure reported by a filter predicate. Used as the element type
of the array arm of `FilterOutput`, and also accepted on its own.

**Details**

- `string`: failure with that string as the message. Produces an
  `SchemaIssue.InvalidValue` wrapping the input, with the string used as
  the issue's `message` annotation.
- `SchemaIssue.Issue`: a fully-formed issue, returned as-is.
- `{ path, issue }`: failure attached to a nested path. `issue` is either
  a `string` (wrapped in an `SchemaIssue.InvalidValue`) or a full
  `SchemaIssue.Issue`; the result is wrapped in an `SchemaIssue.Pointer`
  at the given `path`.

**Signature**

```ts
type FilterIssue = string | SchemaIssue.Issue | {
  readonly path: ReadonlyArray<PropertyKey>
  readonly issue: string | SchemaIssue.Issue
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L6472)

Since v3.10.0