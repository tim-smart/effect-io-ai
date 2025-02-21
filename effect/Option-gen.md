# gen

Similar to `Effect.gen`, `Option.gen` provides a more readable,
generator-based syntax for working with `Option` values, making code that
involves `Option` easier to write and understand. This approach is similar to
using `async/await` but tailored for `Option`.

To import and use `gen` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.gen
```

**Example**

```ts
// Title: Using Option.gen to Create a Combined Value
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
export declare const gen: Gen.Gen<OptionTypeLambda, Gen.Adapter<OptionTypeLambda>>
```
