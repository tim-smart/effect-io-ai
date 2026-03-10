Package: `effect`<br />
Module: `TestSchema`<br />

## TestSchema.Decoding

Decoding test helper. Wraps a schema and exposes `succeed` and `fail`
methods that run the schema's decoder and compare the result.

When to use:
- You want to assert that specific inputs decode to expected values.
- You want to assert that invalid inputs produce specific error messages.
- You need to provide services required by the schema's decoding pipeline.

Behavior:
- All assertions are async and use `assert.deepStrictEqual` internally.
- `succeed(input)` asserts the decoded output equals `input` (identity).
- `succeed(input, expected)` asserts the decoded output equals `expected`.
- `fail(input, message)` asserts decoding fails and the stringified issue
  equals `message`.
- `provide(key, impl)` returns a new `Decoding` with the service injected
  into the decoding context.

**Example** (Decoding with service provision)

```ts
import { Schema } from "effect"
import { TestSchema } from "effect/testing"

const asserts = new TestSchema.Asserts(Schema.String)
const decoding = asserts.decoding()
await decoding.succeed("hello")
```

**See**

- `Asserts`
- `Encoding`

**Signature**

```ts
declare class Decoding<S> { constructor(schema: S, options?: {
    readonly parseOptions?: AST.ParseOptions | undefined
  }) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestSchema.ts#L350)

Since v4.0.0