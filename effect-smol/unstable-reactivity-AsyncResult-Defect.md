Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.Defect

Type marker used by `Builder` to track whether defect failures still need to be handled.

**Signature**

```ts
export interface Defect {
  readonly _: unique symbol
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L762)

Since v4.0.0