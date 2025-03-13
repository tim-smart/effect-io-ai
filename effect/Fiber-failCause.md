Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.failCause

Creates a `Fiber` that has already failed with the specified cause.

**Signature**

```ts
declare const failCause: <E>(cause: Cause.Cause<E>) => Fiber<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L416)

Since v2.0.0