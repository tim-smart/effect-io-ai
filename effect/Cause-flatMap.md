Package: `effect`<br />
Module: `Cause`<br />

## Cause.flatMap

Transforms errors in a `Cause` into new causes.

**Details**

This function applies a function `f` to each `Fail` error, converting it into
a new `Cause`. This is especially powerful for merging or restructuring error
types while preserving or combining cause information.

**See**

- `map` Apply a simpler transformation to errors

**Signature**

```ts
declare const flatMap: { <E, E2>(f: (e: E) => Cause<E2>): (self: Cause<E>) => Cause<E2>; <E, E2>(self: Cause<E>, f: (e: E) => Cause<E2>): Cause<E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L1036)

Since v2.0.0