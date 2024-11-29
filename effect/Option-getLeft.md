# getLeft

Converts a `Either` to an `Option` discarding the value.

To import and use `getLeft` from the "Option" module:

ts
import \* as Option from "effect/Option"
// Can be accessed like this
Option.getLeft
undefined

**Example**

```ts
import { Option, Either } from "effect"

assert.deepStrictEqual(Option.getLeft(Either.right("ok")), Option.none())
assert.deepStrictEqual(Option.getLeft(Either.left("a")), Option.some("a"))
```

**Signature**

```ts
export declare const getLeft: <R, L>(self: Either<R, L>) => Option<L>
```
