Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.Failure

Failed `AsyncResult` containing a failure cause and the latest previous success when one is available.

**Signature**

```ts
export interface Failure<A, E = never> extends AsyncResult.Proto<A, E> {
  readonly _tag: "Failure"
  readonly cause: Cause.Cause<E>
  readonly previousSuccess: Option.Option<Success<A, E>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L276)

Since v4.0.0