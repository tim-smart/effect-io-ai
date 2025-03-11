## zipRight

Combines two `Option`s, keeping the value from the second `Option` if both
are `Some`.

**Details**

This function takes two `Option`s and returns the second one if the first is
`Some`. If the first `Option` is `None`, the result will also be `None`,
regardless of the second `Option`. It effectively "zips" the two `Option`s
while discarding the value from the first `Option`.

This is particularly useful when sequencing computations where the result of
the first computation is not needed, and you only care about the result of
the second computation.

**Signature**

```ts
declare const zipRight: { <B>(that: Option<B>): <_>(self: Option<_>) => Option<B>; <X, B>(self: Option<X>, that: Option<B>): Option<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L1190)

Since v2.0.0