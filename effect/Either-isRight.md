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
import { Either } from "effect"

assert.deepStrictEqual(Either.isRight(Either.right(1)), true)
assert.deepStrictEqual(Either.isRight(Either.left("a")), false)
```

**Signature**

```ts
export declare const isRight: <R, L>(self: Either<R, L>) => self is Right<L, R>
```
