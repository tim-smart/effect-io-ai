Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.durationFromString

Decodes a `string` into a `Duration` and encodes a `Duration` back to a
parseable `string`.

**When to use**

Use when you need a schema transformation to parse human-readable duration
strings from APIs, config, or user input.

**Details**

Decoding accepts any string that `Duration.fromInput` can parse, including
`"Infinity"` and `"-Infinity"`. Encoding returns `String(duration)`,
producing strings such as `"2000 millis"` or `"10 nanos"` that round-trip
through the parser.

**Example** (Duration from string)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.String.pipe(
  Schema.decodeTo(Schema.Duration, SchemaTransformation.durationFromString)
)
```

**See**

- `durationFromNanos`
- `durationFromMillis`

**Signature**

```ts
declare const durationFromString: Transformation<Duration.Duration, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L989)

Since v4.0.0