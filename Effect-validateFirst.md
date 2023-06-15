# validateFirst

Feeds elements of type `A` to `f` until it succeeds. Returns first success
or the accumulation of all errors.

If `elements` is empty then `Effect.fail([])` is returned.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.validateFirst`.

### Example

```typescript
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
