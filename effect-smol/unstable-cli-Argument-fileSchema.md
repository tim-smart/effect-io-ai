Package: `effect`<br />
Module: `Argument`<br />

## Argument.fileSchema

Creates a positional argument that reads and validates file content using a schema.

**Example**

```ts
import { Schema } from "effect"
import { Argument } from "effect/unstable/cli"

const ConfigSchema = Schema.Struct({
  port: Schema.Number,
  host: Schema.String
})

const JsonConfigSchema = Schema.fromJsonString(ConfigSchema)

const config = Argument.fileSchema("config", JsonConfigSchema)
```

**Signature**

```ts
declare const fileSchema: <A>(name: string, schema: Schema.Codec<A, string>, options?: Primitive.FileSchemaOptions | undefined) => Argument<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L237)

Since v4.0.0