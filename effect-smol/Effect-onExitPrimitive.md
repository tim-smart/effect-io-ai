Package: `effect`<br />
Module: `Effect`<br />

## Effect.onExitPrimitive

The low level primitive that powers `onExit`.
function is used to run a finalizer when the effect exits, regardless of the
exit status.

**Signature**

```ts
declare const onExitPrimitive: <A, E, R, XE = never, XR = never>(self: Effect<A, E, R>, f: (exit: Exit.Exit<A, E>) => Effect<void, XE, XR> | undefined, interruptible?: boolean) => Effect<A, E | XE, R | XR>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6588)

Since v2.0.0