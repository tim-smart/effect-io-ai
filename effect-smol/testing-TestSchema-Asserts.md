Package: `effect`<br />
Module: `TestSchema`<br />

## TestSchema.Asserts

Entry point for schema test assertions. Wraps a schema and exposes operation-specific helpers for decoding, encoding, make, arbitrary generation, and round-trip verification.

**When to use**

Use when writing schema unit tests for decoding, encoding, construction, property-based round-trip, or generation behavior.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestSchema.ts#L108)

Since v4.0.0