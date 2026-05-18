Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.value

Returns the current success value, or the previous success value stored in a failure, as an `Option`.

**Signature**

```ts
declare const value: <A, E>(self: AsyncResult<A, E>) => Option.Option<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L423)

Since v4.0.0