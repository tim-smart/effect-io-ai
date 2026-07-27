Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.stringifyJson

Stringifies a present value using `JSON.stringify`.

**When to use**

Use when you need a schema getter to serialize a present decoded value to
JSON text during encoding.

**Details**

- Skips `None` inputs.
- If `JSON.stringify` throws or returns `undefined`, fails with
  `SchemaIssue.InvalidValue`.
- Supports optional `replacer` and `space` options, matching
  `JSON.stringify`.

**Example** (Stringifying JSON)

```ts
import { SchemaGetter } from "effect"

const stringify = SchemaGetter.stringifyJson()
// Getter<string, unknown>
```

**See**

- `parseJson` for the inverse operation

**Signature**

```ts
declare const stringifyJson: (options?: StringifyJsonOptions) => Getter<string, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaGetter.ts#L1037)

Since v4.0.0