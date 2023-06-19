# array

Given a type `A`, this function creates and returns a `Semigroup` for `ReadonlyArray<A>`.
The returned `Semigroup` combines two arrays by concatenating them.

Part of the `Semigroup` module, imported from `@effect/data/typeclass/Semigroup`.

**Signature**

```ts
export declare const array: <A>() => Semigroup<readonly A[]>
```
