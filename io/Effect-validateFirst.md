# validateFirst

Feeds elements of type `A` to `f` until it succeeds. Returns first success
or the accumulation of all errors.

If `elements` is empty then `Effect.fail([])` is returned.

To import and use `validateFirst` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.validateFirst
```

**Example**

```ts
import * as Effect from '@effect/io/Effect'
import * as Either from '@effect/data/Either'

const f = (n: number) => (n > 0 ? Effect.succeed(n) : Effect.fail(`${n} is negative`))

assert.deepStrictEqual(Effect.runSyncEither(Effect.validateFirst([], f)), Either.left([]))
assert.deepStrictEqual(Effect.runSyncEither(Effect.validateFirst([1, 2], f)), Either.right(1))
assert.deepStrictEqual(Effect.runSyncEither(Effect.validateFirst([1, -1], f)), Either.right(1))
assert.deepStrictEqual(Effect.runSyncEither(Effect.validateFirst([-1, 2], f)), Either.right(2))
assert.deepStrictEqual(
  Effect.runSyncEither(Effect.validateFirst([-1, -2], f)),
  Either.left(['-1 is negative', '-2 is negative'])
)
```

**Signature**

```ts
export declare const validateFirst: {
  <R, E, A, B>(f: (a: A) => Effect<R, E, B>): (elements: Iterable<A>) => Effect<R, E[], B>
  <R, E, A, B>(elements: Iterable<A>, f: (a: A) => Effect<R, E, B>): Effect<R, E[], B>
}
```
