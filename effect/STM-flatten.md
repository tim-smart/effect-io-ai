Package: `effect`<br />
Module: `STM`<br />

## STM.flatten

Flattens out a nested `STM` effect.

**Signature**

```ts
declare const flatten: <A, E2, R2, E, R>(self: STM<STM<A, E2, R2>, E, R>) => STM<A, E2 | E, R2 | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L706)

Since v2.0.0