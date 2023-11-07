# getOrElse

Returns the wrapped value if it's a `Right` or a default value if is a `Left`.

To import and use `getOrElse` from the "Either" module:

```ts
import * as Either from 'effect/Either'

// Can be accessed like this
Either.getOrElse
```

**Example**

```ts
import * as Either from 'effect/Either'

assert.deepStrictEqual(
  Either.getOrElse(Either.right(1), (error) => error + '!'),
  1
)
assert.deepStrictEqual(
  Either.getOrElse(Either.left('not a number'), (error) => error + '!'),
  'not a number!'
)
```

**Signature**

```ts
export declare const getOrElse: {
  <E, B>(onLeft: (e: E) => B): <A>(self: Either<E, A>) => B | A
  <E, A, B>(self: Either<E, A>, onLeft: (e: E) => B): A | B
}
```
