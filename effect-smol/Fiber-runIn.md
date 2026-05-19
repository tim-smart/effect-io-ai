Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.runIn

Links a fiber to a `Scope` and returns the same fiber.

When the scope is closed, the fiber is interrupted. If the scope is already
closed, the fiber is interrupted immediately.

**Signature**

```ts
declare const runIn: { (scope: Scope): <A, E>(self: Fiber<A, E>) => Fiber<A, E>; <A, E>(self: Fiber<A, E>, scope: Scope): Fiber<A, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Fiber.ts#L509)

Since v4.0.0