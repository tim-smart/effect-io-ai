# isRight

Determine if a `Either` is a `Right`.

Part of the `Either` module, imported from `@effect/data/Either`.

**Example**

```ts
import { isRight, left, right } from '@effect/data/Either'

assert.deepStrictEqual(isRight(right(1)), true)
assert.deepStrictEqual(isRight(left('error')), false)
```

**Signature**

```ts
export declare const isRight: <E, A>(self: Either<E, A>) => self is Right<E, A>
```
