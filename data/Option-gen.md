# gen

The `gen` API is a helper function that provides a generator interface for the `Option` monad instance.
It can be used to easily create complex `Option` computations in a readable and concise manner.

To import and use `gen` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.gen
```

**Example**

```ts
import * as O from '@effect/data/Option'

assert.deepStrictEqual(
  O.gen(function* ($) {
    const a = yield* $(O.some(1))
    const b = yield* $(O.some(2))
    return a + b
  }),
  O.some(3)
)
```

**Signature**

```ts
export declare const gen: Gen.Gen<OptionTypeLambda, Gen.Adapter<OptionTypeLambda>>
```
