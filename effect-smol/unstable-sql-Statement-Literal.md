Package: `effect`<br />
Module: `Statement`<br />

## Statement.Literal

Raw SQL literal segment. The literal text is inserted directly into the
compiled SQL, while optional `params` are appended as bind parameters.

**Signature**

```ts
export interface Literal {
  readonly _tag: "Literal"
  readonly value: string
  readonly params?: ReadonlyArray<unknown> | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L149)

Since v4.0.0