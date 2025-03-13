Package: `effect`<br />
Module: `STM`<br />

## STM.check

Checks the condition, and if it's true, returns unit, otherwise, retries.

**Signature**

```ts
declare const check: (predicate: LazyArg<boolean>) => STM<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L394)

Since v2.0.0