Package: `effect`<br />
Module: `STM`<br />

## STM.failSync

Fails the transactional effect with the specified lazily evaluated error.

**Signature**

```ts
declare const failSync: <E>(evaluate: LazyArg<E>) => STM<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L575)

Since v2.0.0