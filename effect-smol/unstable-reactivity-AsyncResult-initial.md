Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.initial

Creates an `Initial` result, optionally marking it as waiting.

**Signature**

```ts
declare const initial: <A = never, E = never>(waiting?: boolean) => Initial<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L216)

Since v4.0.0