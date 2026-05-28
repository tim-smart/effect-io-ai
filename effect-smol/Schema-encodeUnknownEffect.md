Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownEffect

Encodes an `unknown` input against a schema, returning an `Effect` that
succeeds with the encoded value or fails with a `SchemaError`.

**When to use**

Use when encoding input whose type is not statically known.

**Details**

Prefer `encodeEffect` when the input is already typed as the schema's
`Type`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**Example** (Encoding a value to a string)

```ts
import { Effect, Schema } from "effect"

const NumberFromString = Schema.NumberFromString

Effect.runPromise(Schema.encodeUnknownEffect(NumberFromString)(42)).then(console.log)
// Output: "42"
```

**Signature**

```ts
declare const encodeUnknownEffect: <S extends Top>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Effect.Effect<S["Encoded"], SchemaError, S["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1534)

Since v4.0.0