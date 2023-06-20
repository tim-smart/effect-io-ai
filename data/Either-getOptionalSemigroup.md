# getOptionalSemigroup

Semigroup that models the combination of values that may be absent, elements that are `Left` are ignored
while elements that are `Right` are combined using the provided `Semigroup`.

To import and use `getOptionalSemigroup` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.getOptionalSemigroup
```

**Signature**

```ts
export declare const getOptionalSemigroup: <E, A>(S: Semigroup<A>) => Semigroup<Either<E, A>>
```
