Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.stringifyJson

Stringifies a present value using `JSON.stringify`.

**When to use**

- A decoded value needs to be serialized to JSON text during encoding.

**Details**

- Skips `None` inputs.
- On thrown stringify failures, such as circular references, fails with
  `Issue.InvalidValue`.
- Supports optional `replacer` and `space` options, matching
  `JSON.stringify`.
- If `JSON.stringify` returns `undefined`, such as for `undefined`,
  functions, symbols, or a replacer that removes the root value, that
  `undefined` result is returned rather than converted into an `Issue`.

**Example** (Stringify JSON)

```ts
import { SchemaGetter } from "effect"

const stringify = SchemaGetter.stringifyJson()
// Getter<string, unknown>
```

**See**

- `parseJson` - inverse operation

**Signature**

```ts
declare const stringifyJson: (options?: StringifyJsonOptions) => Getter<string, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1104)

Since v4.0.0