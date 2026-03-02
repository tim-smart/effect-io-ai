Package: `effect`<br />
Module: `Effect`<br />

## Effect.findFirstFilter

Returns the first value that passes an effectful `FilterEffect`.

The filter receives the element and index. Evaluation short-circuits on the
first `Result.succeed` and returns the transformed value in `Option.some`.

**Signature**

```ts
declare const findFirstFilter: { <A, B, X, E, R>(filter: (input: NoInfer<A>, i: number) => Effect<Result.Result<B, X>, E, R>): (elements: Iterable<A>) => Effect<Option<B>, E, R>; <A, B, X, E, R>(elements: Iterable<A>, filter: (input: NoInfer<A>, i: number) => Effect<Result.Result<B, X>, E, R>): Effect<Option<B>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L909)

Since v4.0.0