# toOption

Converts a `Either` to an `Option` discarding the error.

To import and use `toOption` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.toOption
```

**Example**

```ts
import * as O from '@effect/data/Option'
import * as E from '@effect/data/Either'

assert.deepStrictEqual(E.toOption(E.right(1)), O.some(1))
assert.deepStrictEqual(E.toOption(E.left('a')), O.none())
```

**Signature**

```ts
export declare const toOption: <E, A>(self: Either<E, A>) => Option<A>
```
