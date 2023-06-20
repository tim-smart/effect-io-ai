# toRefinement

Returns a `Refinement` from a `Either` returning function.
This function ensures that a `Refinement` definition is type-safe.

To import and use `toRefinement` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.toRefinement
```

**Signature**

```ts
export declare const toRefinement: <A, E, B extends A>(f: (a: A) => Either<E, B>) => Refinement<A, B>
```
