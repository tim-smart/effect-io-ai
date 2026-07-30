Package: `effect`<br />
Module: `STM`<br />

## STM.orDieWith

Keeps none of the errors, and terminates the fiber running the `STM` effect
with them, using the specified function to convert the `E` into a defect.

**Signature**

```ts
declare const orDieWith: { <E>(f: (error: E) => unknown): <A, R>(self: STM<A, E, R>) => STM<A, never, R>; <A, E, R>(self: STM<A, E, R>, f: (error: E) => unknown): STM<A, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1342)

Since v2.0.0