Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.defaultLeafHook

Returns the built-in `LeafHook` used by default formatters.

**When to use**

Use as the default leaf renderer when you only need to customise the
`CheckHook`.
- Reference as a starting point for custom `LeafHook` implementations.

**Details**

- Checks for a `message` annotation first; returns it if present.
- Otherwise generates a default message per `_tag`:
  - `InvalidType` → `"Expected <type>, got <actual>"`
  - `InvalidValue` → `"Invalid data <actual>"`
  - `MissingKey` → `"Missing key"`
  - `UnexpectedKey` → `"Unexpected key with value <actual>"`
  - `Forbidden` → `"Forbidden operation"`
  - `OneOf` → `"Expected exactly one member to match the input <actual>"`

**Example** (Using defaultLeafHook with Standard Schema formatter)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L967)

Since v4.0.0