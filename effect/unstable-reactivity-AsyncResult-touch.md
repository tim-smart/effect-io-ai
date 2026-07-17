Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.touch

Refreshes the timestamp of a `Success` result while preserving its value and waiting flag; non-success results are returned unchanged.

**Signature**

```ts
declare const touch: <A extends AsyncResult<any, any>>(result: A) => A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/AsyncResult.ts#L385)

Since v4.0.0