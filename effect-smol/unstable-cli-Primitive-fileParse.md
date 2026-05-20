Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.fileParse

Creates a primitive that reads a file and parses its content as structured
data.

**Details**

The parser is selected from `options.format` when provided, otherwise from
the file extension. Supported formats include INI, JSON, TOML, YAML, and YML.

**Example** (Parsing file content)

```ts
import { Effect } from "effect"
import { Primitive } from "effect/unstable/cli"

const tomlFilePrimitive = Primitive.fileParse({ format: "toml" })

const loadConfig = Effect.gen(function*() {
  const config = yield* tomlFilePrimitive.parse("./config.toml")
  console.log(config) // { name: "my-app", version: "1.0.0", port: 3000 }
  return config
})
```

**Signature**

```ts
declare const fileParse: (options?: FileParseOptions) => Primitive<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Primitive.ts#L557)

Since v4.0.0