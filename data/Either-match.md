# match

Takes two functions and an `Either` value, if the value is a `Left` the inner value is applied to the first function,
if the value is a `Right` the inner value is applied to the second function.

Part of the `Either` module, imported from `@effect/data/Either`.

**Example**

```ts
import * as E from '@effect/data/Either'
import { pipe } from '@effect/data/Function'

const onLeft = (errors: ReadonlyArray<string>): string => `Errors: ${errors.join(', ')}`

const onRight = (value: number): string => `Ok: ${value}`

assert.deepStrictEqual(pipe(E.right(1), E.match(onLeft, onRight)), 'Ok: 1')
assert.deepStrictEqual(pipe(E.left(['error 1', 'error 2']), E.match(onLeft, onRight)), 'Errors: error 1, error 2')
```

**Signature**

```ts
export declare const match: {
  <E, B, A, C = B>(onLeft: (e: E) => B, onRight: (a: A) => C): (self: Either<E, A>) => B | C
  <E, A, B, C = B>(self: Either<E, A>, onLeft: (e: E) => B, onRight: (a: A) => C): B | C
}
```
