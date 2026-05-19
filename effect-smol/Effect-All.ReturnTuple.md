Package: `effect`<br />
Module: `Effect`<br />

## Effect.All.ReturnTuple

Computes the return type for `Effect.all` when collecting a tuple.

**Signature**

```ts
type Effect<Discard extends true ? void : T[number] extends never ? [] : { -readonly [K in keyof T]: T[K] extends Effect<infer _A, infer _E, infer _R> ? Mode extends true ? Result.Result<_A, _E> : _A : never; }, Mode extends true ? never : T[number] extends never ? never : T[number] extends Effect<infer _A, infer _E, infer _R> ? _E : never, T[number] extends never ? never : T[number] extends Effect<infer _A, infer _E, infer _R> ? _R : never> = Effect<
    Discard extends true ? void
      : T[number] extends never ? []
      : {
        -readonly [K in keyof T]: T[K] extends Effect<
          infer _A,
          infer _E,
          infer _R
        > ? Mode extends true ? Result.Result<_A, _E> : _A
          : never
      },
    Mode extends true ? never
      : T[number] extends never ? never
      : T[number] extends Effect<infer _A, infer _E, infer _R> ? _E
      : never,
    T[number] extends never ? never
      : T[number] extends Effect<infer _A, infer _E, infer _R> ? _R
      : never
  > extends infer X ? X
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L310)

Since v2.0.0