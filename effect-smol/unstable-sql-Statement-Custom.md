Package: `effect`<br />
Module: `Statement`<br />

## Statement.Custom

Custom SQL segment identified by `kind` and interpreted by the compiler's
`onCustom` callback.

**Signature**

```ts
export interface Custom<
  T extends string = string,
  A = void,
  B = void,
  C = void
> {
  readonly _tag: "Custom"
  readonly kind: T
  readonly paramA: A
  readonly paramB: B
  readonly paramC: C
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L360)

Since v4.0.0