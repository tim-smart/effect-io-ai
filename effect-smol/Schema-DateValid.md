Package: `effect`<br />
Module: `Schema`<br />

## Schema.DateValid

Type-level representation of the `DateValid` schema, which accepts only valid
JavaScript `Date` instances.

**Signature**

```ts
export interface DateValid extends Date {
  readonly "Rebuild": DateValid
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9120)

Since v4.0.0