Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.durationFromNanos

Decodes a `bigint` (nanoseconds) into a `Duration` and encodes a
`Duration` back to `bigint` nanoseconds.

When to use this:
- Working with nanosecond-precision timestamps or intervals.

Behavior:
- Decode: always succeeds, creating a Duration from nanoseconds.
- Encode: fails with `InvalidValue` if the Duration cannot be represented
  as a `bigint` (e.g. `Duration.infinity`).

**Example** (Duration from nanoseconds)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.BigInt.pipe(
  Schema.decodeTo(Schema.Duration, SchemaTransformation.durationFromNanos)
)
```

See also:
- `durationFromMillis`

**Signature**

```ts
declare const durationFromNanos: Transformation<Duration.Duration, bigint, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L986)

Since v4.0.0