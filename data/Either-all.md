# all

Takes a structure of `Option`s and returns an `Option` of values with the same structure.

- If a tuple is supplied, then the returned `Option` will contain a tuple with the same length.
- If a struct is supplied, then the returned `Option` will contain a struct with the same keys.
- If an iterable is supplied, then the returned `Option` will contain an array.

To import and use `all` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.all
```

**Example**

```ts
import * as Either from '@effect/data/Either'

assert.deepStrictEqual(Either.all([Either.right(1), Either.right(2)]), Either.right([1, 2]))
assert.deepStrictEqual(Either.all({ a: Either.right(1), b: Either.right('hello') }), Either.right({ a: 1, b: 'hello' }))
assert.deepStrictEqual(Either.all({ a: Either.right(1), b: Either.left('error') }), Either.left('error'))
```

**Signature**

```ts
export declare const all: <const I extends Iterable<Either<any, any>> | Record<string, Either<any, any>>>(
  input: I
) => [I] extends [readonly Either<any, any>[]]
  ? Either<
      I[number] extends never ? never : [I[number]] extends [Either<infer E, any>] ? E : never,
      { -readonly [K in keyof I]: [I[K]] extends [Either<any, infer A>] ? A : never }
    >
  : [I] extends [Iterable<Either<infer E, infer A>>]
  ? Either<E, A[]>
  : Either<
      I[keyof I] extends never ? never : [I[keyof I]] extends [Either<infer E, any>] ? E : never,
      { -readonly [K in keyof I]: [I[K]] extends [Either<any, infer A>] ? A : never }
    >
```
