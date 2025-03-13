Package: `effect`<br />
Module: `STM`<br />

## STM.catchTag

Recovers from the specified tagged error.

**Signature**

```ts
declare const catchTag: { <K extends E["_tag"] & string, E extends { _tag: string; }, A1, E1, R1>(k: K, f: (e: Extract<E, { _tag: K; }>) => STM<A1, E1, R1>): <A, R>(self: STM<A, E, R>) => STM<A1 | A, E1 | Exclude<E, { _tag: K; }>, R1 | R>; <A, E extends { _tag: string; }, R, K extends E["_tag"] & string, A1, E1, R1>(self: STM<A, E, R>, k: K, f: (e: Extract<E, { _tag: K; }>) => STM<A1, E1, R1>): STM<A | A1, E1 | Exclude<E, { _tag: K; }>, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L336)

Since v2.0.0