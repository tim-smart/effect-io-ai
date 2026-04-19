Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.getActual

Extracts the actual input value from any `Issue` variant.

When to use:

- Retrieve the offending value for logging or custom error rendering.
- Uniformly access `actual` regardless of which issue variant you have.

Behaviour:

- Pure; does not mutate the issue.
- Returns `Option.none()` for `Pointer` and `MissingKey` (they carry no
  value).
- Returns the existing `Option` for variants that already store `actual` as
  `Option<unknown>` (`InvalidType`, `InvalidValue`, `Forbidden`, `Encoding`,
  `Composite`).
- Wraps `actual` with `Option.some` for variants that store it as plain
  `unknown` (`AnyOf`, `UnexpectedKey`, `OneOf`, `Filter`).

**Example** (Extracting the actual value)

```ts
import { Option, SchemaIssue } from "effect"

const issue = new SchemaIssue.MissingKey(undefined)
console.log(SchemaIssue.getActual(issue))
// { _tag: "None" }
```

**See**

- `Issue`
- `isIssue`

**Signature**

```ts
declare const getActual: (issue: Issue) => Option.Option<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L852)

Since v4.0.0