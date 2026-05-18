Package: `effect`<br />
Module: `UndefinedOr`<br />

## UndefinedOr.match

Pattern matches on an `A | undefined` value.

Runs `onDefined` with the value when it is present, or evaluates
`onUndefined` when the value is `undefined`.

**Signature**

```ts
declare const match: { <B, A, C = B>(options: { readonly onUndefined: LazyArg<B>; readonly onDefined: (a: A) => C; }): (self: A | undefined) => B | C; <A, B, C = B>(self: A | undefined, options: { readonly onUndefined: LazyArg<B>; readonly onDefined: (a: A) => C; }): B | C; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UndefinedOr.ts#L53)

Since v4.0.0