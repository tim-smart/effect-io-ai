Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.replacePrevious

Replaces a `Failure` value's stored previous success with the latest success
found in another result.

**Signature**

```ts
declare const replacePrevious: <R extends AsyncResult<any, any>, XE, A>(self: R, previous: Option.Option<AsyncResult<A, XE>>) => With<R, A, AsyncResult.Failure<R>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/AsyncResult.ts#L399)

Since v4.0.0