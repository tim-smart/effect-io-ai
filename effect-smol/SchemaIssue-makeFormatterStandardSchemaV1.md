Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.makeFormatterStandardSchemaV1

Creates a `Formatter` that produces a `StandardSchemaV1.FailureResult`.

When to use:

- Integrate with libraries that consume the
  [Standard Schema V1](https://github.com/standard-schema/standard-schema)
  error format.
- Customise error rendering by providing `leafHook` and/or `checkHook`.

Behaviour:

- Returns a `Formatter<StandardSchemaV1.FailureResult>`.
- Each leaf issue is flattened into `{ message, path }` entries.
- `Pointer` paths are accumulated to produce full property paths.
- Falls back to `defaultLeafHook` / `defaultCheckHook` when no
  hooks are provided.

**Example** (Creating a Standard Schema V1 formatter)

```ts
import { SchemaIssue } from "effect"

const formatter = SchemaIssue.makeFormatterStandardSchemaV1()
```

**See**

- `makeFormatterDefault` — produces a plain string instead
- `LeafHook`
- `CheckHook`

**Signature**

```ts
declare const makeFormatterStandardSchemaV1: (options?: { readonly leafHook?: LeafHook | undefined; readonly checkHook?: CheckHook | undefined; }) => Formatter<StandardSchemaV1.FailureResult>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L1066)

Since v4.0.0