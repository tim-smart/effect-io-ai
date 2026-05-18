Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.waiting

Marks an `AsyncResult` as waiting, optionally touching the timestamp when the result is a `Success`.

**Signature**

```ts
declare const waiting: <R extends AsyncResult<any, any>>(self: R, options?: { readonly touch?: boolean | undefined; }) => R
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L374)

Since v4.0.0