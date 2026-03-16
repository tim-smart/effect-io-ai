Package: `effect`<br />
Module: `Param`<br />

## Param.fileSchema

Creates a parameter that reads and validates file content using a schema.

**Example**

```ts
import { Schema } from "effect"
import * as Param from "effect/unstable/cli/Param"
// @internal - this module is not exported publicly

// Parse JSON config file
const configSchema = Schema.Struct({
  port: Schema.Number,
  host: Schema.String
})

const config = Param.fileSchema(Param.flagKind, "config", configSchema, {
  format: "json"
})

// Parse YAML file
const yamlConfig = Param.fileSchema(Param.flagKind, "config", configSchema, {
  format: "yaml"
})

// Usage: --config config.json (reads and validates file content)
```

**Signature**

```ts
declare const fileSchema: <Kind extends ParamKind, A>(kind: Kind, name: string, schema: Schema.Decoder<A>, options?: Primitive.FileSchemaOptions | undefined) => Param<Kind, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L754)

Since v4.0.0