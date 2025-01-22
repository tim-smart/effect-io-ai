# separate

Separates an `Iterable` into two arrays based on a predicate.

To import and use `separate` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.separate
```

**Signature**

```ts
export declare const separate: <T extends Iterable<Either<any, any>>>(
  self: T
) => [Array<Either.Left<ReadonlyArray.Infer<T>>>, Array<Either.Right<ReadonlyArray.Infer<T>>>]
```
