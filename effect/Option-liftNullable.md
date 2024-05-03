# liftNullable

This API is useful for lifting a function that returns `null` or `undefined` into the `Option` context.

To import and use `liftNullable` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.liftNullable
```

**Example**

```ts
import { Option } from "effect"

const parse = (s: string): number | undefined => {
  const n = parseFloat(s)
  return isNaN(n) ? undefined : n
}

const parseOption = Option.liftNullable(parse)

assert.deepStrictEqual(parseOption("1"), Option.some(1))
assert.deepStrictEqual(parseOption("not a number"), Option.none())
```

**Signature**

```ts
export declare const liftNullable: <A extends readonly unknown[], B>(
  f: (...a: A) => B | null | undefined
) => (...a: A) => Option<NonNullable<B>>
```
