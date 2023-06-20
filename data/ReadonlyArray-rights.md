# rights

Return all the `Right` elements from an `Interable` of `Either`s.

To import and use `rights` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.rights
```

**Signature**

```ts
export declare const rights: <E, A>(self: Iterable<Either<E, A>>) => A[]
```
