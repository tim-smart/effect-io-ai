Package: `effect`<br />
Module: `Statement`<br />

## Statement.primitiveKind

Classifies a JavaScript value as a SQL primitive kind, treating `undefined`
as `null` and defaulting unrecognized objects to `string`.

**Signature**

```ts
declare const primitiveKind: (value: unknown) => PrimitiveKind
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L1098)

Since v4.0.0