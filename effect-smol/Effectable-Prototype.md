Package: `effect`<br />
Module: `Effectable`<br />

## Effectable.Prototype

Create a low-level `Effect` prototype.

When the effect is evaluated, it will call `evaluate` with the current fiber.

**Signature**

```ts
declare const Prototype: <A extends Effect.Effect<any, any, any>>(options: { readonly label: string; readonly evaluate: (this: A, fiber: Fiber.Fiber<any, any>) => Effect.Effect<Effect.Success<A>, Effect.Error<A>, Effect.Services<A>>; }) => Effect.Effect<Effect.Success<A>, Effect.Error<A>, Effect.Services<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effectable.ts#L16)

Since v4.0.0