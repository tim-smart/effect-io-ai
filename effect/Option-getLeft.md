## getLeft

Converts an `Either` into an `Option` by discarding the right value and
extracting the left value.

**Details**

This function transforms an `Either` into an `Option` as follows:

- If the `Either` is a `Left`, its value is wrapped in a `Some` and returned.
- If the `Either` is a `Right`, the value is discarded, and `None` is
  returned.

This utility is useful when you only care about the error case (`Left`) of an
`Either` and want to handle it as an `Option`. By discarding the right value,
it simplifies error-focused workflows.

**Example**

```ts
import { Either, Option } from "effect"

console.log(Option.getLeft(Either.right("ok")))
// Output: { _id: 'Option', _tag: 'None' }

console.log(Option.getLeft(Either.left("err")))
// Output: { _id: 'Option', _tag: 'Some', value: 'err' }
```

**See**

- `getRight` for the opposite operation.

**Signature**

```ts
declare const getLeft: <R, L>(self: Either<R, L>) => Option<L>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L465)

Since v2.0.0