Package: `effect`<br />
Module: `PrimaryKey`<br />

## PrimaryKey.isPrimaryKey

Checks whether a value implements the `PrimaryKey` protocol.

**Details**

This is a structural guard for the `PrimaryKey.symbol` property. It does not
call the method or verify that it returns a string.

**Signature**

```ts
declare const isPrimaryKey: (u: unknown) => u is PrimaryKey
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PrimaryKey.ts#L66)

Since v4.0.0