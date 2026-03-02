Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.date

Creates a primitive that parses Date objects from string input.

**Example**

```ts
import { Effect } from "effect"
import { Primitive } from "effect/unstable/cli"

const parseDate = Effect.gen(function*() {
  const result1 = yield* Primitive.date.parse("2023-12-25")
  console.log(result1) // Date object for December 25, 2023

  const result2 = yield* Primitive.date.parse("2023-12-25T10:30:00Z")
  console.log(result2) // Date object with time

  const result3 = yield* Primitive.date.parse("Dec 25, 2023")
  console.log(result3) // Date object parsed from natural format
})
```

**Signature**

```ts
declare const date: Primitive<Date>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Primitive.ts#L228)

Since v4.0.0