Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.string

Creates a primitive that accepts any string value without validation.

**Example**

```ts
import { Effect } from "effect"
import { Primitive } from "effect/unstable/cli"

const parseString = Effect.gen(function*() {
  const result1 = yield* Primitive.string.parse("hello world")
  console.log(result1) // "hello world"

  const result2 = yield* Primitive.string.parse("")
  console.log(result2) // ""

  const result3 = yield* Primitive.string.parse("123")
  console.log(result3) // "123"
})
```

**Signature**

```ts
declare const string: Primitive<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Primitive.ts#L256)

Since v4.0.0