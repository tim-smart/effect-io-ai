## reduceRight

Folds over the elements of the list using the specified function, beginning
with the last element of the list, using the specified initial value.

**Signature**

```ts
declare const reduceRight: { <Z, A>(zero: Z, f: (accumulator: Z, value: A) => Z): (self: List<A>) => Z; <Z, A>(self: List<A>, zero: Z, f: (accumulator: Z, value: A) => Z): Z; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/List.ts#L850)

Since v2.0.0