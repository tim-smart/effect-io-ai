Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.stringifyJson

Stringifies a present value using `JSON.stringify`.

**When to use**

Use when you need a schema getter to serialize a present decoded value to
JSON text during encoding.

**Details**

- Skips `None` inputs.
- On thrown stringify failures, such as circular references, fails with
  `SchemaIssue.InvalidValue`.
- Supports optional `replacer` and `space` options, matching
  `JSON.stringify`.
- If `JSON.stringify` returns `undefined`, such as for `undefined`,
  functions, symbols, or a replacer that removes the root value, that
  `undefined` result is returned rather than converted into an `Issue`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1040)

Since v4.0.0