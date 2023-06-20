# rights

Return all the `Right` elements from an `Interable` of `Either`s.

To import and use `rights` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.rights
```

**Signature**

```ts
export declare const rights: <E, A>(self: Iterable<Either<E, A>>) => A[]
```
