Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.Success

Successful `AsyncResult` containing the current value, its timestamp, and the shared waiting flag.

**Signature**

```ts
export interface Success<A, E = never> extends AsyncResult.Proto<A, E> {
  readonly _tag: "Success"
  readonly value: A
  readonly timestamp: number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L238)

Since v4.0.0