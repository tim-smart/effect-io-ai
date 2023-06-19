# gen

The `gen` API is a helper function that provides a generator interface for the `Either` monad instance.
It can be used to easily create complex `Either` computations in a readable and concise manner.

Part of the `Either` module, imported from `@effect/data/Either`.

**Example**

```ts
import * as E from '@effect/data/Either'

assert.deepStrictEqual(
  E.gen(function* ($) {
    const a = yield* $(E.right(1))
    const b = yield* $(E.right(2))
    return a + b
  }),
  E.right(3)
)
```

**Signature**

```ts
export declare const gen: Gen.Gen<EitherTypeLambda, Gen.Adapter<EitherTypeLambda>>
```
