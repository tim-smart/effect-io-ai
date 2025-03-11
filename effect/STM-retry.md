## retry

Abort and retry the whole transaction when any of the underlying
transactional variables have changed.

**Signature**

```ts
declare const retry: STM<never, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1672)

Since v2.0.0