## suspend

Suspends creation of the specified transaction lazily.

**Signature**

```ts
declare const suspend: <A, E, R>(evaluate: LazyArg<STM<A, E, R>>) => STM<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1758)

Since v2.0.0