Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.fromExitWithPrevious

Converts an `Exit` to a result, preserving the latest previous success when the exit is a failure.

**Signature**

```ts
declare const fromExitWithPrevious: <A, E>(exit: Exit.Exit<A, E>, previous: Option.Option<AsyncResult<A, E>>) => Success<A, E> | Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L185)

Since v4.0.0