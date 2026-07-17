Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.durationFromNanos

Decodes a `bigint` (nanoseconds) into a `Duration` and encodes a
`Duration` back to `bigint` nanoseconds.

**When to use**

Use when you need a schema transformation for nanosecond-precision timestamps
or intervals.

**Details**

Decoding always succeeds and creates a `Duration` from nanoseconds. Encoding
fails with `InvalidValue` if the `Duration` cannot be represented as a
`bigint`, such as `Duration.infinity`.

**Example** (Converting nanoseconds to a Duration)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.BigInt.pipe(
  Schema.decodeTo(Schema.Duration, SchemaTransformation.durationFromNanos)
)
```

**See**

- `durationFromMillis`

**Signature**

```ts
declare const durationFromNanos: Transformation<Duration.Duration, bigint, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaTransformation.ts#L1000)

Since v4.0.0