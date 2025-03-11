## match

Folds over the `STM` effect, handling both failure and success, but not
retry.

**Signature**

```ts
declare const match: { <E, A2, A, A3>(options: { readonly onFailure: (error: E) => A2; readonly onSuccess: (value: A) => A3; }): <R>(self: STM<A, E, R>) => STM<A2 | A3, never, R>; <A, E, R, A2, A3>(self: STM<A, E, R>, options: { readonly onFailure: (error: E) => A2; readonly onSuccess: (value: A) => A3; }): STM<A2 | A3, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L737)

Since v2.0.0