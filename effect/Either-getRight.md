# getRight

Converts a `Either` to an `Option` discarding the `Left`.

To import and use `getRight` from the "Either" module:

ts
import \* as Either from "effect/Either"
// Can be accessed like this
Either.getRight
undefined

**Example**

```ts
import { Either, Option } from "effect"

assert.deepStrictEqual(Either.getRight(Either.right("ok")), Option.some("ok"))
assert.deepStrictEqual(Either.getRight(Either.left("err")), Option.none())
```

**Signature**

```ts
export declare const getRight: <R, L>(self: Either<R, L>) => Option<R>
```
