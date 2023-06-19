# flatMapEither

Applies a provided function that returns an `Either` to the contents of an `Option`, flattening the result into another `Option`.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import * as O from '@effect/data/Option'
import * as E from '@effect/data/Either'
import { pipe } from '@effect/data/Function'

const f = (n: number) => (n > 2 ? E.left('Too big') : E.right(n + 1))

assert.deepStrictEqual(pipe(O.some(1), O.flatMapEither(f)), O.some(2))
assert.deepStrictEqual(pipe(O.some(3), O.flatMapEither(f)), O.none())
```

**Signature**

```ts
export declare const flatMapEither: {
  <A, E, B>(f: (a: A) => Either<E, B>): (self: Option<A>) => Option<B>
  <A, E, B>(self: Option<A>, f: (a: A) => Either<E, B>): Option<B>
}
```
