Package: `effect`<br />
Module: `Template`<br />

## Template.Interpolated.Context

Extracts the required context from an effect or stream interpolation.

**Details**

Plain values and `Option` interpolations contribute no context.

**Signature**

```ts
type Context<A> = A extends infer T ? T extends Option.Option<infer _> ? never
    : T extends Effect.Effect<infer _A, infer _E, infer R> ? R
    : T extends Stream.Stream<infer _A, infer _E, infer R> ? R
    : never
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Template.ts#L82)

Since v4.0.0