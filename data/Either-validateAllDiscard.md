# validateAllDiscard

Feeds elements of type `A` to `f` and accumulates all errors, discarding
the successes.

To import and use `validateAllDiscard` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.validateAllDiscard
```

**Example**

```ts
import * as Either from '@effect/data/Either'

const f = (n: number) => (n > 0 ? Either.right(n) : Either.left(`${n} is negative`))

assert.deepStrictEqual(Either.validateAllDiscard([], f), Either.right(undefined))
assert.deepStrictEqual(Either.validateAllDiscard([1, 2], f), Either.right(undefined))
assert.deepStrictEqual(Either.validateAllDiscard([1, -1, -2], f), Either.left(['-1 is negative', '-2 is negative']))
```

**Signature**

```ts
export declare const validateAllDiscard: {
  <A, E, _>(f: (a: A) => Either<E, _>): (elements: Iterable<A>) => Either<E[], void>
  <A, E, _>(elements: Iterable<A>, f: (a: A) => Either<E, _>): Either<E[], void>
}
```
