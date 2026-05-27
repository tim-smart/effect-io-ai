Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.cause

Returns the failure cause when the result is a `Failure`, otherwise `None`.

**Signature**

```ts
declare const cause: <A, E>(self: AsyncResult<A, E>) => Option.Option<Cause.Cause<E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L481)

Since v4.0.0