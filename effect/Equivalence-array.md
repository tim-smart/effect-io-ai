Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.array

Creates a new `Equivalence` for an array of values based on a given `Equivalence` for the elements of the array.

**Signature**

```ts
declare const array: <A>(item: Equivalence<A>) => Equivalence<ReadonlyArray<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Equivalence.ts#L200)

Since v2.0.0