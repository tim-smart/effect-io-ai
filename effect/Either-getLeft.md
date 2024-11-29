# getLeft

Converts a `Either` to an `Option` discarding the value.

To import and use `getLeft` from the "Either" module:

ts
import \* as Either from "effect/Either"
// Can be accessed like this
Either.getLeft
undefined

**Example**

```ts
import { Either, Option } from "effect"

assert.deepStrictEqual(Either.getLeft(Either.right("ok")), Option.none())
assert.deepStrictEqual(Either.getLeft(Either.left("err")), Option.some("err"))
```

**Signature**

```ts
export declare const getLeft: <R, L>(self: Either<R, L>) => Option<L>
```
