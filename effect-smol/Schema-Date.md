Package: `effect`<br />
Module: `Schema`<br />

## Schema.Date

Type-level representation of the schema for JavaScript `Date` instances,
including invalid dates.

**Signature**

```ts
export interface Date extends instanceOf<globalThis.Date> {
  readonly "Rebuild": Date
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9717)

Since v4.0.0