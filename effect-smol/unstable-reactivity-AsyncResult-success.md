Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.success

Creates a `Success` result with a value and optional `waiting` flag or timestamp override.

**Signature**

```ts
declare const success: <A, E = never>(value: A, options?: { readonly waiting?: boolean | undefined; readonly timestamp?: number | undefined; }) => Success<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L249)

Since v4.0.0