Package: `effect`<br />
Module: `Schema`<br />

## Schema.HashSetIso

Iso representation used for `HashSet` schemas: an array of element values
using the element schema's `Iso` type.

**Signature**

```ts
type HashSetIso<Value> = ReadonlyArray<Value["Iso"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10079)

Since v4.0.0