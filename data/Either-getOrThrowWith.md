# getOrThrowWith

Extracts the value of an `Either` or throws if the `Either` is `Left`.

If a default error is sufficient for your use case and you don't need to configure the thrown error, see {@link getOrThrow}.

To import and use `getOrThrowWith` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.getOrThrowWith
```

**Example**

```ts
import * as E from '@effect/data/Either'

assert.deepStrictEqual(
  E.getOrThrowWith(E.right(1), () => new Error('Unexpected Left')),
  1
)
assert.throws(() => E.getOrThrowWith(E.left('error'), () => new Error('Unexpected Left')))
```

**Signature**

```ts
export declare const getOrThrowWith: {
  <E>(onLeft: (e: E) => unknown): <A>(self: Either<E, A>) => A
  <E, A>(self: Either<E, A>, onLeft: (e: E) => unknown): A
}
```
