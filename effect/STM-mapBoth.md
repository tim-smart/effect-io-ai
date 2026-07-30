Package: `effect`<br />
Module: `STM`<br />

## STM.mapBoth

Returns an `STM` effect whose failure and success channels have been mapped
by the specified pair of functions, `f` and `g`.

**Signature**

```ts
declare const mapBoth: { <E, E2, A, A2>(options: { readonly onFailure: (error: E) => E2; readonly onSuccess: (value: A) => A2; }): <R>(self: STM<A, E, R>) => STM<A2, E2, R>; <A, E, R, E2, A2>(self: STM<A, E, R>, options: { readonly onFailure: (error: E) => E2; readonly onSuccess: (value: A) => A2; }): STM<A2, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1261)

Since v2.0.0