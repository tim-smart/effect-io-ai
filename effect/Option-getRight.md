## getRight

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

**Example**

```ts
import { Either, Option } from "effect"

console.log(Option.getRight(Either.right("ok")))
// Output: { _id: 'Option', _tag: 'Some', value: 'ok' }

console.log(Option.getRight(Either.left("err")))
// Output: { _id: 'Option', _tag: 'None' }
```

**See**

- `getLeft` for the opposite operation.

**Signature**

```ts
declare const getRight: <R, L>(self: Either<R, L>) => Option<R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L431)

Since v2.0.0