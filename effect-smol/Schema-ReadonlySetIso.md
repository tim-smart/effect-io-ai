Package: `effect`<br />
Module: `Schema`<br />

## Schema.ReadonlySetIso

Iso representation used for `ReadonlySet` schemas: an array of element values
using the element schema's `Iso` type.

**Signature**

```ts
type ReadonlySetIso<Value> = ReadonlyArray<Value["Iso"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9540)

Since v4.0.0