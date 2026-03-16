Package: `effect`<br />
Module: `Option`<br />

## Option.toRefinement

Converts an `Option`-returning function into a type guard (refinement).

**When to use**

- Turning a parsing function into a type-narrowing predicate
- Filtering arrays with `Array.prototype.filter`

**Behavior**

- Returns `true` when the original function returns `Some`
- Returns `false` when the original function returns `None`
- Narrows the input type to `B` on success

**Example** (Converting a parser to a type guard)

```ts
import { Option } from "effect"

type MyData = string | number

const parseString = (data: MyData): Option.Option<string> =>
  typeof data === "string" ? Option.some(data) : Option.none()

//      ┌─── (a: MyData) => a is string
//      ▼
const isString = Option.toRefinement(parseString)

console.log(isString("a"))
// Output: true

console.log(isString(1))
// Output: false
```

**See**

- `liftPredicate` for the reverse direction

**Signature**

```ts
declare const toRefinement: <A, B extends A>(f: (a: A) => Option<B>) => (a: A) => a is B
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L524)

Since v2.0.0