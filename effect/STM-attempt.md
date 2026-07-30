Package: `effect`<br />
Module: `STM`<br />

## STM.attempt

Creates an `STM` value from a partial (but pure) function.

**Signature**

```ts
declare const attempt: <A>(evaluate: LazyArg<A>) => STM<A, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L301)

Since v2.0.0