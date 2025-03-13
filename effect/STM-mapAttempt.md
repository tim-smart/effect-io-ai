Package: `effect`<br />
Module: `STM`<br />

## STM.mapAttempt

Maps the value produced by the effect with the specified function that may
throw exceptions but is otherwise pure, translating any thrown exceptions
into typed failed effects.

**Signature**

```ts
declare const mapAttempt: { <A, B>(f: (a: A) => B): <E, R>(self: STM<A, E, R>) => STM<B, unknown, R>; <A, E, R, B>(self: STM<A, E, R>, f: (a: A) => B): STM<B, unknown, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1249)

Since v2.0.0