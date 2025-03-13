Package: `effect`<br />
Module: `List`<br />

## List.map

Applies the specified mapping function to each element of the list.

**Signature**

```ts
declare const map: { <S extends List<any>, B>(f: (a: List.Infer<S>, i: number) => B): (self: S) => List.With<S, B>; <S extends List<any>, B>(self: S, f: (a: List.Infer<S>, i: number) => B): List.With<S, B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/List.ts#L749)

Since v2.0.0