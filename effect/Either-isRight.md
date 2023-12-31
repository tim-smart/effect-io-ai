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
export declare const isRight: <E, A>(self: Either<E, A>) => self is Right<E, A>
```
