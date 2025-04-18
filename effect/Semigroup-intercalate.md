Package: `@effect/typeclass`<br />
Module: `Semigroup`<br />

## Semigroup.intercalate

The `intercalate` API returns a function that takes a `Semigroup` instance and a separator value, and returns a new
`Semigroup` instance that combines values with the given separator.

This API is useful when you want to combine values with a specific separator. For example, when you want to concatenate
an array of strings with a separator string in between.

It is interesting to note that there is no equivalent API in the `Monoid` module. This is because the value `empty`,
which is required for the `Monoid` interface, cannot exist.

**Signature**

```ts
declare const intercalate: { <A>(separator: A): (S: Semigroup<A>) => Semigroup<A>; <A>(S: Semigroup<A>, separator: A): Semigroup<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Semigroup.ts#L95)

Since v0.24.0