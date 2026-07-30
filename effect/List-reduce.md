Package: `effect`<br />
Module: `List`<br />

## List.reduce

Folds over the elements of the list using the specified function, using the
specified initial value.

**Signature**

```ts
declare const reduce: { <Z, A>(zero: Z, f: (b: Z, a: A) => Z): (self: List<A>) => Z; <A, Z>(self: List<A>, zero: Z, f: (b: Z, a: A) => Z): Z; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/List.ts#L830)

Since v2.0.0