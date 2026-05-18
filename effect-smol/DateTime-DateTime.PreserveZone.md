Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.DateTime.PreserveZone

Type-level helper used by constructors to preserve a zoned input.

When the input type is `DateTime.Zoned`, the result type is
`DateTime.Zoned`; otherwise the result type is `DateTime.Utc`.

**Signature**

```ts
type PreserveZone<A> = A extends Zoned ? Zoned : Utc
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L143)

Since v3.6.0