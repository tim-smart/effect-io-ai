Package: `effect`<br />
Module: `Flag`<br />

## Flag.fileSchema

Creates a flag that reads and validates file content using the specified
schema.

**Example**

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
declare const fileSchema: <A>(name: string, schema: Schema.Decoder<A>, options?: Primitive.FileSchemaOptions | undefined) => Flag<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L314)

Since v4.0.0