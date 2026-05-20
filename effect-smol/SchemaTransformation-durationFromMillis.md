Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.durationFromMillis

Decodes a `number` of milliseconds into a `Duration` and encodes a `Duration`
back to milliseconds.

**When to use**

Use this for timeouts, delays, elapsed intervals, or other duration values
stored as millisecond counts.

**Details**

Decode creates a duration from the number, and encode returns the duration
length in milliseconds.

**Example** (Duration from milliseconds)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.Number.pipe(
  Schema.decodeTo(Schema.Duration, SchemaTransformation.durationFromMillis)
)
```

**See**

- `durationFromNanos`

**Signature**

```ts
declare const durationFromMillis: Transformation<Duration.Duration, number, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L1060)

Since v4.0.0