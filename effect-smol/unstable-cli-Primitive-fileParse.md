Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.fileParse

Reads and parses file content using the specified schema.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Primitive.ts#L518)

Since v4.0.0