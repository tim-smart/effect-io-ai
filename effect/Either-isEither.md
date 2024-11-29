# isEither

Tests if a value is a `Either`.

To import and use `isEither` from the "Either" module:

ts
import \* as Either from "effect/Either"
// Can be accessed like this
Either.isEither
undefined

**Example**

```ts
import { Either } from "effect"

assert.deepStrictEqual(Either.isEither(Either.right(1)), true)
assert.deepStrictEqual(Either.isEither(Either.left("a")), true)
assert.deepStrictEqual(Either.isEither({ right: 1 }), false)
```

**Signature**

```ts
export declare const isEither: (input: unknown) => input is Either<unknown, unknown>
```
