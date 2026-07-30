Package: `effect`<br />
Module: `STM`<br />

## STM.dieSync

Fails the transactional effect with the specified lazily evaluated defect.

**Signature**

```ts
declare const dieSync: (evaluate: LazyArg<unknown>) => STM<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L505)

Since v2.0.0