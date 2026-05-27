Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.replacePrevious

For a `Failure`, replaces its stored previous success with the latest success found in another result; non-failures are returned unchanged.

**Signature**

```ts
declare const replacePrevious: <R extends AsyncResult<any, any>, XE, A>(self: R, previous: Option.Option<AsyncResult<A, XE>>) => With<R, A, AsyncResult.Failure<R>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L430)

Since v4.0.0