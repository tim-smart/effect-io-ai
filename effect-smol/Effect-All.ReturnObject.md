Package: `effect`<br />
Module: `Effect`<br />

## Effect.All.ReturnObject

Computes the return type for `Effect.all` when collecting a record.

**Signature**

```ts
type ReturnObject<T, Discard, Mode> = [T] extends [
    Record<string, EffectAny>
  ] ? Effect<
      Discard extends true ? void
        : {
          -readonly [K in keyof T]: [T[K]] extends [
            Effect<infer _A, infer _E, infer _R>
          ] ? Mode extends true ? Result.Result<_A, _E> : _A
            : never
        },
      Mode extends true ? never
        : keyof T extends never ? never
        : T[keyof T] extends Effect<infer _A, infer _E, infer _R> ? _E
        : never,
      keyof T extends never ? never
        : T[keyof T] extends Effect<infer _A, infer _E, infer _R> ? _R
        : never
    >
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L342)

Since v2.0.0