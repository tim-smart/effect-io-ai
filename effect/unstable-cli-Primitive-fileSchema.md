Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.fileSchema

Reads and parses file content using the specified schema.

**Example** (Parsing file content with a schema)

```ts
import { Effect, Schema } from "effect"
import { Primitive } from "effect/unstable/cli"

const ConfigSchema = Schema.Struct({
  name: Schema.String,
  version: Schema.String,
  port: Schema.Number
})

const jsonConfigPrimitive = Primitive.fileSchema(ConfigSchema, {
  format: "json"
})

const loadConfig = Effect.gen(function*() {
  const config = yield* jsonConfigPrimitive.parse("./config.json")
  console.log(config) // { name: "my-app", version: "1.0.0", port: 3000 }
  return config
})
```

**Signature**

```ts
declare const fileSchema: <A>(schema: Schema.ConstraintDecoder<A, Environment>, options?: FileSchemaOptions | undefined) => Primitive<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Primitive.ts#L615)

Since v4.0.0