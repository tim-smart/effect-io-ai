Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.makeFormatterDefault

Creates a `Formatter` that converts an `Issue` into a
human-readable multi-line string.

When to use:

- Produce error messages for logging, CLI output, or developer-facing
  diagnostics.
- This is the default formatter used by `Issue.toString()`.

Behaviour:

- Flattens the issue tree into `{ message, path }` entries using
  `defaultLeafHook` and `defaultCheckHook`.
- Each entry is rendered as `"<message>"` or `"<message>\n  at <path>"`.
- Multiple entries are joined with newlines.

**Example** (Formatting an issue as a string)

```ts
import { SchemaIssue } from "effect"

const formatter = SchemaIssue.makeFormatterDefault()
```

**See**

- `makeFormatterStandardSchemaV1` — produces Standard Schema V1 format instead
- `Formatter`

**Signature**

```ts
declare const makeFormatterDefault: () => Formatter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L1184)

Since v4.0.0