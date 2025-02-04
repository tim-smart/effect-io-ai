# liftThrowable

Lifts a function that throws exceptions into a function that returns an
`Option`.

**Details**

This utility function takes a function `f` that might throw an exception and
transforms it into a safer function that returns an `Option`. If the original
function executes successfully, the result is wrapped in a `Some`. If an
exception is thrown, the result is `None`, allowing the developer to handle
errors in a functional, type-safe way.

To import and use `liftThrowable` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.liftThrowable
```

**Example**

```ts
import { Option } from "effect"

const parse = Option.liftThrowable(JSON.parse)

console.log(parse("1"))
// Output: { _id: 'Option', _tag: 'Some', value: 1 }

console.log(parse(""))
// Output: { _id: 'Option', _tag: 'None' }
```

**Signature**

```ts
export declare const liftThrowable: <A extends ReadonlyArray<unknown>, B>(f: (...a: A) => B) => (...a: A) => Option<B>
```
