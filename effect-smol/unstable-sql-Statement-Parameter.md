Package: `effect`<br />
Module: `Statement`<br />

## Statement.Parameter

Bound parameter segment whose value is emitted as a dialect-specific
placeholder and bind value.

**Signature**

```ts
export interface Parameter {
  readonly _tag: "Parameter"
  readonly value: unknown
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L199)

Since v4.0.0