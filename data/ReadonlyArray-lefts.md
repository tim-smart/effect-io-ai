# lefts

Return all the `Left` elements from an `Interable` of `Either`s.

To import and use `lefts` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.lefts
```

**Signature**

```ts
export declare const lefts: <E, A>(self: Iterable<Either<E, A>>) => E[]
```
