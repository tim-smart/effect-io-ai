Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.error

Returns the first typed error from a failure cause, or `None` for successes, initial results, defects, and interrupt-only causes.

**Signature**

```ts
declare const error: <A, E>(self: AsyncResult<A, E>) => Option.Option<E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L459)

Since v4.0.0