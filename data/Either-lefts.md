# lefts

Return all the `Left` elements from an `Interable` of `Either`s.

To import and use `lefts` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.lefts
```

**Signature**

```ts
export declare const lefts: <E, A>(self: Iterable<Either<E, A>>) => E[]
```
