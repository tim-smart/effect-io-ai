Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.keyValuePair

Parses a single `key=value` pair into a record object.

**Example**

```ts
import { Effect } from "effect"
import { Primitive } from "effect/unstable/cli"

const parseKeyValue = Effect.gen(function*() {
  const result1 = yield* Primitive.keyValuePair.parse("name=john")
  console.log(result1) // { name: "john" }

  const result2 = yield* Primitive.keyValuePair.parse("port=3000")
  console.log(result2) // { port: "3000" }

  const result3 = yield* Primitive.keyValuePair.parse("debug=true")
  console.log(result3) // { debug: "true" }
})
```

**Signature**

```ts
declare const keyValuePair: Primitive<Record<string, string>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Primitive.ts#L617)

Since v4.0.0