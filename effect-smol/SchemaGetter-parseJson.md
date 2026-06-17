Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.parseJson

Parses a JSON string into a value.

**When to use**

Use when you need a schema getter to parse a present encoded JSON string
during decoding.

**Details**

- Skips `None` inputs.
- Without `reviver`: returns `Schema.MutableJson` (typed JSON).
- With `reviver`: returns `unknown` (reviver may produce arbitrary values).
- On parse failure, fails with `SchemaIssue.InvalidValue` containing the error message.

**Example** (Parsing JSON)

```ts
import { SchemaGetter } from "effect"

const parse = SchemaGetter.parseJson<string>()
// Getter<MutableJson, string>
```

**See**

- `stringifyJson` for the inverse operation

**Signature**

```ts
declare const parseJson: { <E extends string>(): Getter<Schema.MutableJson, E>; <E extends string>(options: ParseJsonOptions): Getter<unknown, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L992)

Since v4.0.0