## toRefinement

Converts an `Option`-returning function into a type guard.

**Details**

This function transforms a function that returns an `Option` into a type
guard, ensuring type safety when validating or narrowing types. The returned
type guard function checks whether the input satisfies the condition defined
in the original `Option`-returning function.

If the original function returns `Option.some`, the type guard evaluates to
`true`, confirming the input is of the desired type. If the function returns
`Option.none`, the type guard evaluates to `false`.

This utility is especially useful for validating types in union types,
filtering arrays, or ensuring safe handling of specific subtypes.

**Example**

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

**Signature**

```ts
declare const toRefinement: <A, B extends A>(f: (a: A) => Option<B>) => (a: A) => a is B
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L356)

Since v2.0.0