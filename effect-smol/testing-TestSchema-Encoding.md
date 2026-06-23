Package: `effect`<br />
Module: `TestSchema`<br />

## TestSchema.Encoding

Provides encoding test assertions through `succeed` and `fail` methods that run the schema's encoder and compare the result.

**When to use**

Use when you want to assert that specific values encode to expected outputs, invalid inputs produce specific error messages, or schemas receive required encoding services.

**Details**

All assertions are async and use `assert.deepStrictEqual` internally. `succeed(input)` asserts the encoded output equals `input`; `succeed(input, expected)` asserts it equals `expected`; `fail(input, message)` asserts encoding fails and the stringified issue equals `message`. `provide(key, impl)` returns a new `Encoding` with the service injected into the encoding context.

**Example** (Encoding assertions)

```ts
import { Schema } from "effect"
import { TestSchema } from "effect/testing"

const encoding = new TestSchema.Asserts(Schema.NumberFromString).encoding()
await encoding.succeed(42, "42")
```

**See**

- `Asserts`
- `Decoding`

**Signature**

```ts
declare class Encoding<S> { constructor(schema: S, options?: {
    readonly parseOptions?: SchemaAST.ParseOptions | undefined
  }) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestSchema.ts#L457)

Since v4.0.0