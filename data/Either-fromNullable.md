# fromNullable

Takes a lazy default and a nullable value, if the value is not nully, turn it into a `Right`, if the value is nully use
the provided default as a `Left`.

To import and use `fromNullable` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.fromNullable
```

**Example**

```ts
import * as E from '@effect/data/Either'

const parse = E.fromNullable(() => 'nullable')

assert.deepStrictEqual(parse(1), E.right(1))
assert.deepStrictEqual(parse(null), E.left('nullable'))
```

**Signature**

```ts
export declare const fromNullable: {
  <A, E>(onNullable: (a: A) => E): (a: A) => Either<E, NonNullable<A>>
  <A, E>(a: A, onNullable: (a: A) => E): Either<E, NonNullable<A>>
}
```