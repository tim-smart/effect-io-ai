Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.fileText

Creates a primitive that reads and returns the contents of a file as a string.

**Example** (Reading file text)

```ts
import { Effect, Schema } from "effect"
import { Primitive } from "effect/unstable/cli"

const ConfigSchema = Schema.Struct({
  name: Schema.String,
  version: Schema.String,
  port: Schema.Number
})
const decodeConfig = Schema.decodeUnknownEffect(
  Schema.fromJsonString(ConfigSchema)
)

const readConfigFile = Effect.gen(function*() {
  const content = yield* Primitive.fileText.parse("./config.json")
  console.log(content) // {"name":"my-app","version":"1.0.0","port":3000}

  const config = yield* decodeConfig(content)
  console.log(config) // { name: "my-app", version: "1.0.0", port: 3000 }
  return config
})
```

**Signature**

```ts
declare const fileText: Primitive<string>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Primitive.ts#L468)

Since v4.0.0