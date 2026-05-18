Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.CoercibleRecord

Record input whose fields can be coerced into URL parameter values.

Nested records are rendered using bracket notation, and arrays produce repeated
parameters.

**Signature**

```ts
type CoercibleRecord<A> = {
  readonly [K in keyof A]: CoercibleRecordField<A[K]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UrlParams.ts#L113)

Since v4.0.0