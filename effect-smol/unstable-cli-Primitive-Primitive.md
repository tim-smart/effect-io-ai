Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.Primitive

Represents a primitive type that can parse string input into a typed value.

**Example**

```ts
import { Effect } from "effect"
import { Primitive } from "effect/unstable/cli"

// Using built-in primitives
const parseString = Effect.gen(function*() {
  const stringResult = yield* Primitive.string.parse("hello")
  const numberResult = yield* Primitive.integer.parse("42")
  const boolResult = yield* Primitive.boolean.parse("true")

  return { stringResult, numberResult, boolResult }
})

// All primitives provide parsing functionality
const parseDate = Effect.gen(function*() {
  const dateResult = yield* Primitive.date.parse("2023-12-25")
  const pathResult = yield* Primitive.path("file", true).parse("./package.json")
  return { dateResult, pathResult }
})
```

**Signature**

```ts
export interface Primitive<out A> extends Primitive.Variance<A> {
  readonly _tag: string
  readonly parse: (value: string) => Effect.Effect<A, string, FileSystem.FileSystem | Path.Path>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Primitive.ts#L59)

Since v4.0.0