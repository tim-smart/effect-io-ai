Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.boolean

Creates a primitive that parses boolean values from string input.

Recognizes various forms of true/false values:
- True values: "true", "1", "y", "yes", "on"
- False values: "false", "0", "n", "no", "off"

**Example**

```ts
import { Effect } from "effect"
import { Primitive } from "effect/unstable/cli"

const parseBoolean = Effect.gen(function*() {
  const result1 = yield* Primitive.boolean.parse("true")
  console.log(result1) // true

  const result2 = yield* Primitive.boolean.parse("yes")
  console.log(result2) // true

  const result3 = yield* Primitive.boolean.parse("false")
  console.log(result3) // false

  const result4 = yield* Primitive.boolean.parse("0")
  console.log(result4) // false
})
```

**Signature**

```ts
declare const boolean: Primitive<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Primitive.ts#L144)

Since v4.0.0