# liftEither

Lifts an `Either` function to an `Option` function.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import * as O from '@effect/data/Option'
import * as E from '@effect/data/Either'

const parse = (s: string) => (isNaN(+s) ? E.left(`Error: ${s} is not a number`) : E.right(+s))

const parseNumber = O.liftEither(parse)

assert.deepEqual(parseNumber('12'), O.some(12))
assert.deepEqual(parseNumber('not a number'), O.none())
```

**Signature**

```ts
export declare const liftEither: <A extends readonly unknown[], E, B>(
  f: (...a: A) => Either<E, B>
) => (...a: A) => Option<B>
```
