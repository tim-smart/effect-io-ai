Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.Initial

Initial `AsyncResult` state before a success value or failure cause is available.

**Signature**

```ts
export interface Initial<A, E = never> extends AsyncResult.Proto<A, E> {
  readonly _tag: "Initial"
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L164)

Since v4.0.0