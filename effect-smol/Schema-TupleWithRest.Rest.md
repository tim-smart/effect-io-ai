Package: `effect`<br />
Module: `Schema`<br />

## Schema.TupleWithRest.Rest

Non-empty list of schemas used for the rest portion of a `TupleWithRest`.

**Details**

The first schema describes the repeated rest element. Additional schemas, when
present, describe trailing tuple elements after the repeated rest segment.

**Signature**

```ts
type Rest = readonly [Top, ...Array<Top>]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3760)

Since v3.10.0