Package: `effect`<br />
Module: `Channel`<br />

## Channel.Variance

Phantom variance marker for the type parameters of `Channel`.

**Details**

Output element, output error, output done, and environment types are
covariant. Input element, input error, and input done types are
contravariant. This is type-level machinery and is not used directly at
runtime.

**Signature**

```ts
export interface Variance<
  out OutElem,
  out OutErr,
  out OutDone,
  in InElem,
  in InErr,
  in InDone,
  out Env
> {
  readonly [TypeId]: VarianceStruct<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L203)

Since v2.0.0