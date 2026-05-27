Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.toExit

Converts a result to an `Exit`, succeeding with a success value, failing with a failure cause, or failing with `NoSuchElementError` for `Initial`.

**Signature**

```ts
declare const toExit: <A, E>(self: AsyncResult<A, E>) => Exit.Exit<A, E | Cause.NoSuchElementError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L499)

Since v4.0.0