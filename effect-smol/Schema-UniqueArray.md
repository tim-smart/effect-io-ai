Package: `effect`<br />
Module: `Schema`<br />

## Schema.UniqueArray

Returns a new array schema that ensures all elements are unique.

The equivalence used to determine uniqueness is the one provided by
`Schema.toEquivalence(item)`.

**Signature**

```ts
declare const UniqueArray: <S extends Top>(item: S) => UniqueArray<S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2342)

Since v4.0.0