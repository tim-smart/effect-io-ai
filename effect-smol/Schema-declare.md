Package: `effect`<br />
Module: `Schema`<br />

## Schema.declare

An API for creating schemas for non parametric types.

**See**

- `declareConstructor` for creating schemas for parametric types.

**Signature**

```ts
declare const declare: <T, Iso = T>(is: (u: unknown) => u is T, annotations?: Annotations.Declaration<T> | undefined) => declare<T, Iso>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L219)

Since v4.0.0