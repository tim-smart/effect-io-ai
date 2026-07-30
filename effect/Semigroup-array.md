Package: `@effect/typeclass`<br />
Module: `Semigroup`<br />

## Semigroup.array

Given a type `A`, this function creates and returns a `Semigroup` for `ReadonlyArray<A>`.
The returned `Semigroup` combines two arrays by concatenating them.

**Signature**

```ts
declare const array: <A>() => Semigroup<ReadonlyArray<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Semigroup.ts#L225)

Since v0.24.0