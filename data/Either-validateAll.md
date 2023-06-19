# validateAll

Feeds elements of type `A` to `f` and accumulates all errors in error
channel or successes in success channel.

This combinator is lossy meaning that if there are errors all successes
will be lost. To retain all information please use `ReadonlyArray.separate`.

Part of the `Either` module, imported from `@effect/data/Either`.

**Example**

```ts
import * as Either from '@effect/data/Either'

const f = (n: number) => (n > 0 ? Either.right(n) : Either.left(`${n} is negative`))

assert.deepStrictEqual(Either.validateAll([], f), Either.right([]))
assert.deepStrictEqual(Either.validateAll([1, 2], f), Either.right([1, 2]))
assert.deepStrictEqual(Either.validateAll([1, -1, -2], f), Either.left(['-1 is negative', '-2 is negative']))
```

**Signature**

```ts
export declare const validateAll: {
  <A, E, B>(f: (a: A) => Either<E, B>): (elements: Iterable<A>) => Either<E[], B[]>
  <A, E, B>(elements: Iterable<A>, f: (a: A) => Either<E, B>): Either<E[], B[]>
}
```
