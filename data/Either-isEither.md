# isEither

Tests if a value is a `Either`.

Part of the `Either` module, imported from `@effect/data/Either`.

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
