# isRight

Determine if a `Either` is a `Right`.

To import and use `isRight` from the "Either" module:

```ts
import * as Either from "effect/Either"
// Can be accessed like this
Either.isRight
```

**Example**

```ts
import { isRight, left, right } from "effect/Either"

assert.deepStrictEqual(isRight(right(1)), true)
assert.deepStrictEqual(isRight(left("a")), false)
```

**Signature**

```ts
export declare const isRight: <R, L>(self: Either<R, L>) => self is Right<L, R>
```
