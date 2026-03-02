Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.fileText

Creates a primitive that reads and returns the contents of a file as a string.

**Example**

```ts
import { Effect } from "effect"
import { Primitive } from "effect/unstable/cli"

const readConfigFile = Effect.gen(function*() {
  const content = yield* Primitive.fileText.parse("./config.json")
  console.log(content) // File contents as string

  const parsed = JSON.parse(content)
  return parsed
})
```

**Signature**

```ts
declare const fileText: Primitive<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Primitive.ts#L438)

Since v4.0.0