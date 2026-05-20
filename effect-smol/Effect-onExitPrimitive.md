Package: `effect`<br />
Module: `Effect`<br />

## Effect.onExitPrimitive

Runs an optional finalizer with the effect's `Exit` value when the effect
completes.

**Details**

This low-level operator preserves the source effect's result unless the
finalizer fails. Prefer `onExit` for normal cleanup logic.

**Signature**

```ts
declare const onExitPrimitive: <A, E, R, XE = never, XR = never>(self: Effect<A, E, R>, f: (exit: Exit.Exit<A, E>) => Effect<void, XE, XR> | undefined, interruptible?: boolean) => Effect<A, E | XE, R | XR>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6387)

Since v4.0.0