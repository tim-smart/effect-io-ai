Package: `effect`<br />
Module: `Schema`<br />

## Schema.Optic

A schema that additionally supports optic (lens/prism) operations.

`Optic<T, Iso>` extends `Schema``<T>` with an `Iso` type that
describes the isomorphic counterpart used by the optic layer. Crucially,
decoding and encoding require *no* Effect services (`DecodingServices` and
`EncodingServices` are both `never`), which means the optic can operate
purely without an Effect runtime.

Most primitive schemas (e.g. `Schema.String`, `Schema.Number`) implement
`Optic` automatically. You normally interact with this interface through
`Optic_` utilities rather than constructing it directly.

**Signature**

```ts
export interface Optic<out T, out Iso> extends Schema<T> {
  readonly "Iso": Iso
  readonly "DecodingServices": never
  readonly "EncodingServices": never
  readonly "~rebuild.out": Optic<T, Iso>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L692)

Since v4.0.0