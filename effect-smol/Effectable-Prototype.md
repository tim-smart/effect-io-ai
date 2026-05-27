Package: `effect`<br />
Module: `Effectable`<br />

## Effectable.Prototype

Create a low-level `Effect` prototype.

**When to use**

Use when you need to create a custom Effect-like value without extending a
class, by providing a label and an evaluate function that receives the
current fiber.

**Details**

When the effect is evaluated, it calls `evaluate` with the current fiber.

**See**

- `Class` for a class-based approach to defining custom Effect values

**Signature**

```ts
declare const Prototype: <A extends Effect.Effect<any, any, any>>(options: { readonly label: string; readonly evaluate: (this: A, fiber: Fiber.Fiber<any, any>) => Effect.Effect<Effect.Success<A>, Effect.Error<A>, Effect.Services<A>>; }) => Effect.Effect<Effect.Success<A>, Effect.Error<A>, Effect.Services<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effectable.ts#L61)

Since v4.0.0