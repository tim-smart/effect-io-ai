Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.stringifyJson

Stringifies a value to JSON.

Use this when:
- A decoded value needs to be serialized to a JSON string during encoding.

Behavior:
- Skips `None` inputs.
- On stringify failure (e.g. circular references), fails with `Issue.InvalidValue`.
- Supports optional `replacer` and `space` options (same as `JSON.stringify`).

**Example** (Stringify JSON)

```ts
import { SchemaGetter } from "effect"

const stringify = SchemaGetter.stringifyJson()
// Getter<string, unknown>
```

See also:
- `parseJson` — inverse operation

**Signature**

```ts
declare const stringifyJson: (options?: StringifyJsonOptions) => Getter<string, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1072)

Since v4.0.0