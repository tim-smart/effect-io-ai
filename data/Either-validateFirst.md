# validateFirst

Feeds elements of type `A` to `f` until it succeeds. Returns first success or the accumulation of all errors.

If `elements` is empty then `Either.left([])` is returned.

To import and use `validateFirst` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.validateFirst
```

**Example**

```ts
import * as Either from '@effect/data/Either'

const f = (n: number) => (n > 0 ? Either.right(n) : Either.left(`${n} is negative`))

assert.deepStrictEqual(Either.validateFirst([], f), Either.left([]))
assert.deepStrictEqual(Either.validateFirst([1, 2], f), Either.right(1))
assert.deepStrictEqual(Either.validateFirst([1, -1], f), Either.right(1))
assert.deepStrictEqual(Either.validateFirst([-1, 2], f), Either.right(2))
assert.deepStrictEqual(Either.validateFirst([-1, -2], f), Either.left(['-1 is negative', '-2 is negative']))
```

**Signature**

```ts
export declare const validateFirst: {
  <A, E, B>(f: (a: A) => Either<E, B>): (elements: Iterable<A>) => Either<E[], B>
  <A, E, B>(elements: Iterable<A>, f: (a: A) => Either<E, B>): Either<E[], B>
}
```
