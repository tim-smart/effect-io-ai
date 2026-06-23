Package: `effect`<br />
Module: `Flag`<br />

## Flag.fileSchema

Creates a flag that reads and validates file content using the specified
schema.

**Example** (Validating file contents)

```ts
import { Schema } from "effect"
import { Flag } from "effect/unstable/cli"

const ConfigSchema = Schema.Struct({
  port: Schema.Number,
  host: Schema.String
})

const config = Flag.fileSchema("config", ConfigSchema, { format: "json" })
```

**Signature**

```ts
declare const fileSchema: <A>(name: string, schema: Schema.ConstraintDecoder<A, Environment>, options?: Primitive.FileSchemaOptions | undefined) => Flag<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L357)

Since v4.0.0