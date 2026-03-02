Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.integer

Creates a primitive that parses integer numbers from string input.

**Example**

```ts
import { Effect } from "effect"
import { Primitive } from "effect/unstable/cli"

const parseInteger = Effect.gen(function*() {
  const result1 = yield* Primitive.integer.parse("42")
  console.log(result1) // 42

  const result2 = yield* Primitive.integer.parse("-123")
  console.log(result2) // -123

  const result3 = yield* Primitive.integer.parse("0")
  console.log(result3) // 0
})
```

**Signature**

```ts
declare const integer: Primitive<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Primitive.ts#L200)

Since v4.0.0