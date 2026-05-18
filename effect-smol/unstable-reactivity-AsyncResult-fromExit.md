Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.fromExit

Converts an `Exit` into a `Success` when it succeeds or a `Failure` carrying the exit cause when it fails.

**Signature**

```ts
declare const fromExit: <A, E>(exit: Exit.Exit<A, E>) => Success<A, E> | Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L174)

Since v4.0.0