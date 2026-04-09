Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.durationFromMillis

Decodes a `number` (milliseconds) into a `Duration` and encodes a
`Duration` back to `number` milliseconds.

When to use this:
- Working with millisecond-precision timestamps (e.g. `Date.now()`).

Behavior:
- Decode: creates a Duration from milliseconds. Always succeeds.
- Encode: converts a Duration to milliseconds. Always succeeds.

**Example** (Duration from milliseconds)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.Number.pipe(
  Schema.decodeTo(Schema.Duration, SchemaTransformation.durationFromMillis)
)
```

See also:
- `durationFromNanos`

**Signature**

```ts
declare const durationFromMillis: Transformation<Duration.Duration, number, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L983)

Since v4.0.0