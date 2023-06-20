# asUnit

Maps the `Right` value of this `Either` to the `void` constant value.

To import and use `asUnit` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.asUnit
```

**Signature**

```ts
export declare const asUnit: <E, _>(self: Either<E, _>) => Either<E, void>
```
