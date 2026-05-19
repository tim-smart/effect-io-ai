Package: `effect`<br />
Module: `UndefinedOr`<br />

## UndefinedOr.map

Maps a defined value with `f`, or returns `undefined` unchanged.

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): (self: A | undefined) => B | undefined; <A, B>(self: A | undefined, f: (a: A) => B): B | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UndefinedOr.ts#L41)

Since v4.0.0