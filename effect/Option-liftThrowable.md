# liftThrowable

A utility function that lifts a function that throws exceptions into a function that returns an `Option`.

This function is useful for any function that might throw an exception, allowing the developer to handle
the exception in a more functional way.

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

assert.deepStrictEqual(parse("1"), Option.some(1))
assert.deepStrictEqual(parse(""), Option.none())
```

**Signature**

```ts
export declare const liftThrowable: <A extends ReadonlyArray<unknown>, B>(f: (...a: A) => B) => (...a: A) => Option<B>
```
