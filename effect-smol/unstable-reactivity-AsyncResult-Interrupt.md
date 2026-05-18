Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.Interrupt

Type marker used by `Builder` to track whether interrupt failures still need to be handled.

**Signature**

```ts
export interface Interrupt {
  readonly _: unique symbol
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L738)

Since v4.0.0