Package: `effect`<br />
Module: `Schema`<br />

## Schema.CauseIso

Iso representation used for `Cause` schemas: an ordered array of
`CauseReasonIso` values.

**When to use**

Use when working with the ISO shape of a `Cause` schema, such as `toIso`
optics or codecs that expose a cause as its ordered array of encoded reasons.

**See**

- `Cause` for constructing schemas for full Cause values
- `CauseReasonIso` for the ISO shape of each array element

**Signature**

```ts
type CauseIso<E, D> = ReadonlyArray<CauseReasonIso<E, D>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L9298)

Since v4.0.0