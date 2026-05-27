Package: `effect`<br />
Module: `Channel`<br />

## Channel.VarianceStruct

Structural encoding used by `Variance` to record each `Channel` type
parameter's variance.

**Details**

The `_OutElem`, `_OutErr`, `_OutDone`, and `_Env` fields are covariant; the
`_InElem`, `_InErr`, and `_InDone` fields are contravariant. Users normally
do not need to reference this interface directly.

**Signature**

```ts
export interface VarianceStruct<
  out OutElem,
  out OutErr,
  out OutDone,
  in InElem,
  in InErr,
  in InDone,
  out Env
> {
  _Env: Types.Covariant<Env>
  _InErr: Types.Contravariant<InErr>
  _InElem: Types.Contravariant<InElem>
  _InDone: Types.Contravariant<InDone>
  _OutErr: Types.Covariant<OutErr>
  _OutElem: Types.Covariant<OutElem>
  _OutDone: Types.Covariant<OutDone>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L288)

Since v2.0.0