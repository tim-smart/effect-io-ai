Package: `effect`<br />
Module: `TestSchema`<br />

## TestSchema.Asserts

Entry point for schema test assertions. Wraps a schema and exposes
operation-specific helpers: `Decoding`, `Encoding`, make,
arbitrary generation, and round-trip verification.

When to use:
- You are writing unit tests for a schema's decoding, encoding, or
  construction behavior.
- You want property-based round-trip or generation checks.

**Example** (Decoding and encoding a struct)

```ts
import { Schema } from "effect"
import { TestSchema } from "effect/testing"

const schema = Schema.Struct({ name: Schema.String })
const asserts = new TestSchema.Asserts(schema)

// decoding
await asserts.decoding().succeed({ name: "Alice" })

// encoding
await asserts.encoding().succeed({ name: "Alice" })
```

**See**

- `Decoding`
- `Encoding`

**Signature**

```ts
declare class Asserts<S> { constructor(schema: S) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestSchema.ts#L111)

Since v4.0.0