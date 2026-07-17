Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.defaultLeafHook

Returns the built-in `LeafHook` used by default formatters.

**When to use**

Use as the default leaf renderer when customizing only the `CheckHook`.

**Details**

- Checks for a `message` annotation first; returns it if present.
- Otherwise generates a default message per `_tag`:
  - `InvalidType` → `"Expected <type>, got <actual>"`
  - `InvalidValue` → `"Invalid data <actual>"`
  - `MissingKey` → `"Missing key"`
  - `UnexpectedKey` → `"Unexpected key with value <actual>"`
  - `Forbidden` → `"Forbidden operation"`
  - `OneOf` → `"Expected exactly one member to match the input <actual>"`

**Example** (Formatting Standard Schema issues with defaultLeafHook)

```ts
import { SchemaIssue } from "effect"

const formatter = SchemaIssue.makeFormatterStandardSchemaV1({
  leafHook: SchemaIssue.defaultLeafHook
})
```

**See**

- `LeafHook`
- `makeFormatterStandardSchemaV1`

**Signature**

```ts
declare const defaultLeafHook: LeafHook
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaIssue.ts#L898)

Since v4.0.0