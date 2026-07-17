Package: `effect`<br />
Module: `Effect`<br />

## Effect.All.ReturnIterable

Computes the return type for `Effect.all` when collecting an iterable.

**Signature**

```ts
type ReturnIterable<T, Discard, Mode> = [T] extends [Iterable<Effect<infer A, infer E, infer R>>] ? Effect<
      Discard extends true ? void : Array<Mode extends true ? Result.Result<A, E> : A>,
      Mode extends true ? never : E,
      R
    >
    : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L275)

Since v2.0.0