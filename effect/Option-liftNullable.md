# liftNullable

Lifts a function that returns `null` or `undefined` into the `Option`
context.

**Details**

This function takes a function `f` that might return `null` or `undefined`
and transforms it into a function that returns an `Option`. The resulting
function will return:

- `Some` if the original function produces a non-null, non-undefined value.
- `None` if the original function produces `null` or `undefined`.

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

console.log(parseOption("1"))
// Output: { _id: 'Option', _tag: 'Some', value: 1 }

console.log(parseOption("not a number"))
// Output: { _id: 'Option', _tag: 'None' }
```

**Signature**

```ts
export declare const liftNullable: <A extends ReadonlyArray<unknown>, B>(
  f: (...a: A) => B | null | undefined
) => (...a: A) => Option<NonNullable<B>>
```
