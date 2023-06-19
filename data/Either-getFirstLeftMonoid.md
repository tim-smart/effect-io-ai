# getFirstLeftMonoid

`Monoid` returning the left-most `Left` value. If both operands are `Right`s then the inner values
are combined using the provided `Monoid`.

- `combine` is provided by {@link getFirstLeftSemigroup}.
- `empty` is `right(M.empty)`

Part of the `Either` module, imported from `@effect/data/Either`.

**Signature**

```ts
export declare const getFirstLeftMonoid: <A, E>(M: Monoid<A>) => Monoid<Either<E, A>>
```
