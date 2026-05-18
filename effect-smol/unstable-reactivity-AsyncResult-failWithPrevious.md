Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.failWithPrevious

Creates a `Failure` result from a typed error while carrying forward the latest success stored in a previous result.

**Signature**

```ts
declare const failWithPrevious: <A, E>(error: E, options: { readonly previous: Option.Option<AsyncResult<A, E>>; readonly waiting?: boolean | undefined; }) => Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L360)

Since v4.0.0