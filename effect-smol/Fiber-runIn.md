Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.runIn

Links the lifetime of a fiber to the provided scope.

**Signature**

```ts
declare const runIn: { (scope: Scope): <A, E>(self: Fiber<A, E>) => Fiber<A, E>; <A, E>(self: Fiber<A, E>, scope: Scope): Fiber<A, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Fiber.ts#L488)

Since v4.0.0