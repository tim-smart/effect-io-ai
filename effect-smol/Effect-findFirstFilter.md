Package: `effect`<br />
Module: `Effect`<br />

## Effect.findFirstFilter

Returns the first value that passes an effectful `FilterEffect`.

**When to use**

Use when you need to find the first element that satisfies an effectful
filter returning a `Result`, which also transforms the matching element.

**Details**

The filter receives the element and index. Evaluation short-circuits on the
first `Result.succeed` and returns the transformed value in `Option.some`.

**See**

- `findFirst` for the simpler effectful predicate-based variant

**Signature**

```ts
declare const findFirstFilter: { <A, B, X, E, R>(filter: (input: NoInfer<A>, i: number) => Effect<Result.Result<B, X>, E, R>): (elements: Iterable<A>) => Effect<Option<B>, E, R>; <A, B, X, E, R>(elements: Iterable<A>, filter: (input: NoInfer<A>, i: number) => Effect<Result.Result<B, X>, E, R>): Effect<Option<B>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L689)

Since v4.0.0