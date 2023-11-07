# left

Constructs a new `Either` holding a `Left` value. This usually represents a failure, due to the right-bias of this
structure.

To import and use `left` from the "Either" module:

```ts
import * as Either from 'effect/Either'

// Can be accessed like this
Either.left
```

**Signature**

```ts
export declare const left: <E>(e: E) => Either<E, never>
```
