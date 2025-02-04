# getRight

Converts an `Either` into an `Option` by discarding the error and extracting
the right value.

**Details**

This function takes an `Either` and returns an `Option` based on its value:

- If the `Either` is a `Right`, its value is wrapped in a `Some` and
  returned.
- If the `Either` is a `Left`, the error is discarded, and `None` is
  returned.

This is particularly useful when you only care about the success case
(`Right`) of an `Either` and want to handle the result using `Option`. By
using this function, you can convert `Either` into a simpler structure for
cases where error handling is not required.

To import and use `getRight` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.getRight
```

**Example**

```ts
import { Either, Option } from "effect"

console.log(Option.getRight(Either.right("ok")))
// Output: { _id: 'Option', _tag: 'Some', value: 'ok' }

console.log(Option.getRight(Either.left("err")))
// Output: { _id: 'Option', _tag: 'None' }
```

**Signature**

```ts
export declare const getRight: <R, L>(self: Either<R, L>) => Option<R>
```
