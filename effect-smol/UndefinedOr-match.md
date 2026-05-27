Package: `effect`<br />
Module: `UndefinedOr`<br />

## UndefinedOr.match

Pattern matches on an `A | undefined` value, running `onDefined` when the
value is present or evaluating `onUndefined` when the value is `undefined`.

**When to use**

Use when you need to turn an `A | undefined` into a non-optional result by
handling both the defined and undefined branches in one expression.

**See**

- `map` for transforming defined values while preserving `undefined`
- `getOrThrowWith` for throwing when the value is `undefined` instead of returning a fallback branch

**Signature**

```ts
declare const match: { <B, A, C = B>(options: { readonly onUndefined: LazyArg<B>; readonly onDefined: (a: A) => C; }): (self: A | undefined) => B | C; <A, B, C = B>(self: A | undefined, options: { readonly onUndefined: LazyArg<B>; readonly onDefined: (a: A) => C; }): B | C; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UndefinedOr.ts#L98)

Since v4.0.0