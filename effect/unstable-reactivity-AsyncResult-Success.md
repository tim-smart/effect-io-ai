Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.Success

Successful `AsyncResult` containing the current value, its timestamp, and the shared waiting flag.

**Signature**

```ts
export interface Success<A, E = never> extends AsyncResult.Proto<A, E> {
  readonly _tag: "Success"
  readonly value: A
  readonly timestamp: number
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/AsyncResult.ts#L229)

Since v4.0.0