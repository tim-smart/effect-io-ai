Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.defaultLeafHook

The built-in `LeafHook` used by default formatters.

When to use:

- Use as-is when you only need to customise the `CheckHook` but want
  the default leaf rendering.
- Reference as a starting point for custom `LeafHook` implementations.

Behaviour:

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L968)

Since v4.0.0