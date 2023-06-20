# isEither

Tests if a value is a `Either`.

To import and use `isEither` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.isEither
```

**Example**

```ts
import { isEither, left, right } from '@effect/data/Either'

assert.deepStrictEqual(isEither(right(1)), true)
assert.deepStrictEqual(isEither(left('error')), true)
assert.deepStrictEqual(isEither({ right: 1 }), false)
```

**Signature**

```ts
export declare const isEither: (input: unknown) => input is Either<unknown, unknown>
```
