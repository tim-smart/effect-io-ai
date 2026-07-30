Package: `effect`<br />
Module: `STM`<br />

## STM.fail

Fails the transactional effect with the specified error.

**Signature**

```ts
declare const fail: <E>(error: E) => STM<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L567)

Since v2.0.0