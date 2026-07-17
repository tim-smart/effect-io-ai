Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.runIn

Adds a fiber to a `Scope` and returns the same fiber.

**When to use**

Use when a manually managed fiber should be interrupted when a Scope closes.

**Details**

When the scope is closed, the fiber is interrupted. If the scope is already
closed, the fiber is interrupted immediately.

**Gotchas**

This does not wait for the fiber to complete. It only registers the
interruption finalizer and returns the same fiber.

**See**

- `interrupt` for interrupting and waiting for completion

**Signature**

```ts
declare const runIn: { (scope: Scope): <A, E>(self: Fiber<A, E>) => Fiber<A, E>; <A, E>(self: Fiber<A, E>, scope: Scope): Fiber<A, E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L629)

Since v4.0.0