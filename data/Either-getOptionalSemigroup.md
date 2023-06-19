# getOptionalSemigroup

Semigroup that models the combination of values that may be absent, elements that are `Left` are ignored
while elements that are `Right` are combined using the provided `Semigroup`.

Part of the `Either` module, imported from `@effect/data/Either`.

**Signature**

```ts
export declare const getOptionalSemigroup: <E, A>(S: Semigroup<A>) => Semigroup<Either<E, A>>
```
