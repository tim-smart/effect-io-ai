Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.fail

Creates a `Failure` result from a typed error, wrapping it in `Cause.fail`.

**Signature**

```ts
declare const fail: <E, A = never>(error: E, options?: { readonly previousSuccess?: Option.Option<Success<A, E>> | undefined; readonly waiting?: boolean | undefined; }) => Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L349)

Since v4.0.0