# exists

Returns `false` if `Left` or returns the Either of the application of the given predicate to the `Right` value.

To import and use `exists` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.exists
```

**Example**

```ts
import * as E from '@effect/data/Either'

const f = E.exists((n: number) => n > 2)

assert.deepStrictEqual(f(E.left('a')), false)
assert.deepStrictEqual(f(E.right(1)), false)
assert.deepStrictEqual(f(E.right(3)), true)
```

**Signature**

```ts
export declare const exists: {
  <A>(predicate: Predicate<A>): <E>(self: Either<E, A>) => boolean
  <E, A>(self: Either<E, A>, predicate: Predicate<A>): boolean
}
```