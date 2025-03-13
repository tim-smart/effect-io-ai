Package: `effect`<br />
Module: `Take`<br />

## Take.map

Transforms `Take<A, E>` to `Take<B, A>` by applying function `f`.

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): <E>(self: Take<A, E>) => Take<B, E>; <A, E, B>(self: Take<A, E>, f: (a: A) => B): Take<B, E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Take.ts#L179)

Since v2.0.0