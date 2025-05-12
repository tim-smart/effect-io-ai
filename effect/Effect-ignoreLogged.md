Package: `effect`<br />
Module: `Effect`<br />

## Effect.ignoreLogged

Ignores the result of an effect but logs any failures.

**Details**

This function takes an effect and returns a new effect that ignores whether
the original effect succeeds or fails. However, if the effect fails, it will
log the failure at the Debug level, so you can keep track of any issues that
arise.

**When to Use**

This is useful in scenarios where you want to continue with your program
regardless of the result of the effect, but you still want to be aware of
potential failures that may need attention later.

**Signature**

```ts
declare const ignoreLogged: <A, E, R>(self: Effect<A, E, R>) => Effect<void, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L4127)

Since v2.0.0