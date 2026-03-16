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

const config = Argument.fileSchema("config", ConfigSchema)
```

**Signature**

```ts
declare const fileSchema: <A>(name: string, schema: Schema.Decoder<A>, options?: Primitive.FileSchemaOptions | undefined) => Argument<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L235)

Since v4.0.0