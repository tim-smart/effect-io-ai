# fromNullable

Takes a lazy default and a nullable value, if the value is not nully (`null` or `undefined`), turn it into a `Right`, if the value is nully use
the provided default as a `Left`.

To import and use `fromNullable` from the "Either" module:

```ts
import * as Either from 'effect/Either'

// Can be accessed like this
Either.fromNullable
```

**Example**

```ts
import * as Either from 'effect/Either'

assert.deepStrictEqual(
  Either.fromNullable(1, () => 'fallback'),
  Either.right(1)
)
assert.deepStrictEqual(
  Either.fromNullable(null, () => 'fallback'),
  Either.left('fallback')
)
```

**Signature**

```ts
export declare const fromNullable: {
  <A, E>(onNullable: (a: A) => E): (self: A) => Either<E, NonNullable<A>>
  <A, E>(self: A, onNullable: (a: A) => E): Either<E, NonNullable<A>>
}
```
