Package: `effect`<br />
Module: `Template`<br />

## Template.Interpolated.Error

Extracts the error type from an effect or stream interpolation.

Plain values and `Option` interpolations contribute no error type.

**Signature**

```ts
type Error<A> = A extends infer T ? T extends Option.Option<infer _> ? never
    : T extends Stream.Stream<infer _A, infer E, infer _R> ? E
    : T extends Effect.Effect<infer _A, infer E, infer _R> ? E
    : never
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Template.ts#L97)

Since v4.0.0