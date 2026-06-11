Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.failureWithPrevious

Creates a `Failure` result from a `Cause`, carrying forward the latest success stored in a previous result.

**Signature**

```ts
declare const failureWithPrevious: <A, E>(cause: Cause.Cause<E>, options: { readonly previous: Option.Option<AsyncResult<A, E>>; readonly waiting?: boolean | undefined; }) => Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L317)

Since v4.0.0