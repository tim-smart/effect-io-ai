Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownEffect

Encodes an `unknown` input against a schema, returning an `Effect` that
succeeds with the encoded value or fails with a `SchemaError`. Use this
when the input type is not statically known. Prefer `encodeEffect` when
the input is already typed as the schema's `Type`.

**Example** (Encoding a value to a string)

```ts
import { Effect, Schema } from "effect"

const NumberFromString = Schema.NumberFromString

Effect.runPromise(Schema.encodeUnknownEffect(NumberFromString)(42)).then(console.log)
// Output: "42"
```

**Signature**

```ts
declare const encodeUnknownEffect: <S extends Top>(schema: S) => (input: unknown, options?: AST.ParseOptions) => Effect.Effect<S["Encoded"], SchemaError, S["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1292)

Since v4.0.0