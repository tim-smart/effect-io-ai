Package: `effect`<br />
Module: `Statement`<br />

## Statement.isCustom

Creates a type guard for custom SQL segments with the specified custom kind.

**Signature**

```ts
declare const isCustom: <A extends Custom<any, any, any, any>>(kind: A["kind"]) => (u: unknown) => u is A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L149)

Since v4.0.0