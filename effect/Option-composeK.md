# composeK

Composes two functions that return `Option` values, creating a new function
that chains them together.

**Details**

This function allows you to compose two computations, each represented by a
function that returns an `Option`. The result of the first function is passed
to the second function if it is `Some`. If the first function returns `None`,
the composed function short-circuits and returns `None` without invoking the
second function.

To import and use `composeK` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.composeK
```

**Example**

```ts
import { Option } from "effect"

const parse = (s: string): Option.Option<number> => (isNaN(Number(s)) ? Option.none() : Option.some(Number(s)))

const double = (n: number): Option.Option<number> => (n > 0 ? Option.some(n * 2) : Option.none())

const parseAndDouble = Option.composeK(parse, double)

console.log(parseAndDouble("42"))
// Output: { _id: 'Option', _tag: 'Some', value: 84 }

console.log(parseAndDouble("not a number"))
// Output: { _id: 'Option', _tag: 'None' }
```

**Signature**

```ts
export declare const composeK: {
  <B, C>(bfc: (b: B) => Option<C>): <A>(afb: (a: A) => Option<B>) => (a: A) => Option<C>
  <A, B, C>(afb: (a: A) => Option<B>, bfc: (b: B) => Option<C>): (a: A) => Option<C>
}
```
