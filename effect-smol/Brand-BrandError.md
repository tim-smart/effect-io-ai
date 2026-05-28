Package: `effect`<br />
Module: `Brand`<br />

## Brand.BrandError

Error returned when a branded type is constructed from an invalid value.

**Details**

The error wraps a `SchemaIssue.Issue`, exposes `message` through
`issue.toString()`, and formats as `BrandError(<message>)`.

**Gotchas**

`BrandError` is an error-like model with `_tag`, `name`, `message`, and
`toString`; it does not extend JavaScript `Error`.

**Signature**

```ts
declare class BrandError { constructor(issue: Issue.Issue) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Brand.ts#L150)

Since v4.0.0