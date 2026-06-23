Package: `effect`<br />
Module: `Param`<br />

## Param.fileSchema

Creates a parameter that reads and validates file content using a schema.

**Example** (Validating file contents)

```ts
import { Schema } from "effect"
import { Param } from "effect/unstable/cli"
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
declare const fileSchema: <Kind extends ParamKind, A>(kind: Kind, name: string, schema: Schema.ConstraintDecoder<A, Environment>, options?: Primitive.FileSchemaOptions | undefined) => Param<Kind, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L815)

Since v4.0.0