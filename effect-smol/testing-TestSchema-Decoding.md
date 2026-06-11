Package: `effect`<br />
Module: `TestSchema`<br />

## TestSchema.Decoding

Provides decoding test assertions through `succeed` and `fail` methods that run the schema's decoder and compare the result.

**When to use**

Use when you want to assert that specific inputs decode to expected values, invalid inputs produce specific error messages, or schemas receive required decoding services.

**Details**

All assertions are async and use `assert.deepStrictEqual` internally. `succeed(input)` asserts the decoded output equals `input`; `succeed(input, expected)` asserts it equals `expected`; `fail(input, message)` asserts decoding fails and the stringified issue equals `message`. `provide(key, impl)` returns a new `Decoding` with the service injected into the decoding context.

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
    readonly parseOptions?: SchemaAST.ParseOptions | undefined
  }) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestSchema.ts#L316)

Since v4.0.0