Package: `effect`<br />
Module: `Option`<br />

## Option.gen

Generator-based syntax for `Option`, similar to `async`/`await` but for
optional values. Yielding a `None` short-circuits the generator to `None`.

**When to use**

- Writing imperative-style code that chains multiple `Option`s
- Readability when many sequential optional steps are involved

**Behavior**

- Each `yield*` unwraps a `Some` value or short-circuits to `None`
- The return value is wrapped in `Some`
- No `Effect` runtime is needed

**Example** (Generator syntax)

```ts
import { Option } from "effect"

const maybeName: Option.Option<string> = Option.some("John")
const maybeAge: Option.Option<number> = Option.some(25)

const person = Option.gen(function*() {
  const name = (yield* maybeName).toUpperCase()
  const age = yield* maybeAge
  return { name, age }
})

console.log(person)
// Output:
// { _id: 'Option', _tag: 'Some', value: { name: 'JOHN', age: 25 } }
```

**See**

- `Do` / `bind` for the do notation alternative

**Signature**

```ts
declare const gen: Gen.Gen<OptionTypeLambda>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L2557)

Since v2.0.0