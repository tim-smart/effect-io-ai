Package: `effect`<br />
Module: `Option`<br />

## Option.gen

Similar to `Effect.gen`, `Option.gen` provides a more readable,
generator-based syntax for working with `Option` values, making code that
involves `Option` easier to write and understand. This approach is similar to
using `async/await` but tailored for `Option`.

**Example** (Using `Option.gen` to Create a Combined Value)

```ts
import { Option } from "effect"

const maybeName: Option.Option<string> = Option.some("John")
const maybeAge: Option.Option<number> = Option.some(25)

const person = Option.gen(function* () {
  const name = (yield* maybeName).toUpperCase()
  const age = yield* maybeAge
  return { name, age }
})

console.log(person)
// Output:
// { _id: 'Option', _tag: 'Some', value: { name: 'JOHN', age: 25 } }
```

**Signature**

```ts
declare const gen: Gen.Gen<OptionTypeLambda, Gen.Adapter<OptionTypeLambda>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L2141)

Since v2.0.0