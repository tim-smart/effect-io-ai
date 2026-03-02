Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.float

Creates a primitive that parses floating-point numbers from string input.

**Example**

```ts
import { Effect } from "effect"
import { Primitive } from "effect/unstable/cli"

const parseFloat = Effect.gen(function*() {
  const result1 = yield* Primitive.float.parse("3.14")
  console.log(result1) // 3.14

  const result2 = yield* Primitive.float.parse("-42.5")
  console.log(result2) // -42.5

  const result3 = yield* Primitive.float.parse("0")
  console.log(result3) // 0
})
```

**Signature**

```ts
declare const float: Primitive<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Primitive.ts#L172)

Since v4.0.0