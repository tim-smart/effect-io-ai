# toRefinement

Returns a `Refinement` from a `Either` returning function.
This function ensures that a `Refinement` definition is type-safe.

Part of the `Either` module, imported from `@effect/data/Either`.

**Signature**

```ts
export declare const toRefinement: <A, E, B extends A>(f: (a: A) => Either<E, B>) => Refinement<A, B>
```
