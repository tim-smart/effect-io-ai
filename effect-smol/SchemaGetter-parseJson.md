Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.parseJson

Parses a JSON string into a value.

Use this when:
- An encoded value is a JSON string that needs to be parsed during decoding.

Behavior:
- Skips `None` inputs.
- Without `reviver`: returns `Schema.MutableJson` (typed JSON).
- With `reviver`: returns `unknown` (reviver may produce arbitrary values).
- On parse failure, fails with `Issue.InvalidValue` containing the error message.

**Example** (Parse JSON)

```ts
import { SchemaGetter } from "effect"

const parse = SchemaGetter.parseJson<string>()
// Getter<MutableJson, string>
```

See also:
- `stringifyJson` — inverse operation

**Signature**

```ts
declare const parseJson: { <E extends string>(): Getter<Schema.MutableJson, E>; <E extends string>(options: ParseJsonOptions): Getter<unknown, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1032)

Since v4.0.0