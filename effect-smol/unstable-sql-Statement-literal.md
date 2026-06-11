Package: `effect`<br />
Module: `Statement`<br />

## Statement.literal

Constructs a raw SQL literal segment. The literal text is not escaped, so use
bound parameters for untrusted values.

**Signature**

```ts
declare const literal: (value: string, params?: ReadonlyArray<unknown> | undefined) => Literal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L162)

Since v4.0.0