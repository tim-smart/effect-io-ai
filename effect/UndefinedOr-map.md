Package: `effect`<br />
Module: `UndefinedOr`<br />

## UndefinedOr.map

Maps a defined value with `f`, or returns `undefined` unchanged.

**When to use**

Use to apply a pure transformation to an `A | undefined` value while
preserving `undefined` as absence.

**See**

- `match` when you need to handle the `undefined` case explicitly

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): (self: A | undefined) => B | undefined; <A, B>(self: A | undefined, f: (a: A) => B): B | undefined; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/UndefinedOr.ts#L31)

Since v4.0.0