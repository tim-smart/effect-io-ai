Package: `effect`<br />
Module: `Schema`<br />

## Schema.Finite

Type-level representation of the `Finite` number schema, which rejects `NaN`,
`Infinity`, and `-Infinity`.

**Signature**

```ts
export interface Finite extends Number {
  readonly "Rebuild": Finite
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10624)

Since v3.10.0