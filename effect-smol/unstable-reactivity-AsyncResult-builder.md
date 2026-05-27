Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.builder

Creates a typed builder for rendering an `AsyncResult` by handling waiting, initial, success, error, defect, interrupt, and failure cases.

**Signature**

```ts
declare const builder: <A extends AsyncResult<any, any>>(self: A) => Builder<never, A extends Success<infer _A, infer _E> ? _A : never, A extends Failure<infer _A, infer _E> ? _E : never, A extends Initial<infer _A, infer _E> ? true : never, A extends Failure<infer _A, infer _E> ? Defect | Interrupt : never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L737)

Since v4.0.0