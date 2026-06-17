Package: `effect`<br />
Module: `Effect`<br />

## Effect.onExitPrimitive

Runs an optional finalizer with the effect's `Exit` value when the effect
completes.

**When to use**

Use when you are building a low-level `Effect` operator that must inspect the
source effect's `Exit`, may skip finalization by returning `undefined`, or
must choose whether finalization is forced into an uninterruptible region.

**Details**

This low-level operator preserves the source effect's result unless the
finalizer fails. Prefer `onExit` for normal cleanup logic.

**See**

- `onExit` for ordinary exit-aware cleanup whose finalizer always returns an effect

**Signature**

```ts
declare const onExitPrimitive: <A, E, R, XE = never, XR = never>(self: Effect<A, E, R>, f: (exit: Exit.Exit<A, E>) => Effect<void, XE, XR> | undefined, interruptible?: boolean) => Effect<A, E | XE, R | XR>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6855)

Since v4.0.0