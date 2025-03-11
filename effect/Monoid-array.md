## array

Given a type `A`, this function creates and returns a `Semigroup` for `ReadonlyArray<A>`.

The `empty` value is the empty array.

**Signature**

```ts
declare const array: <A>() => Monoid<ReadonlyArray<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Monoid.ts#L88)

Since v0.24.0