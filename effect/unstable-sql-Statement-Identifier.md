Package: `effect`<br />
Module: `Statement`<br />

## Statement.Identifier

SQL identifier segment whose value is escaped by the active dialect compiler.

**Signature**

```ts
export interface Identifier {
  readonly _tag: "Identifier"
  readonly value: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Statement.ts#L175)

Since v4.0.0