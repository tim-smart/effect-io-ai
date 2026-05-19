Package: `effect`<br />
Module: `UndefinedOr`<br />

## UndefinedOr.getOrThrow

Returns the defined value, or throws a default `Error` when the input is
`undefined`.

**Signature**

```ts
declare const getOrThrow: <A>(self: A | undefined) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UndefinedOr.ts#L96)

Since v4.0.0