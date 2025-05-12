Package: `effect`<br />
Module: `Effect`<br />

## Effect.unsandbox

The `unsandbox` function is used to revert an effect that has been
sandboxed by `sandbox`. When you apply `unsandbox`, the
effect's error channel is restored to its original state, without the
detailed `Cause<E>` information. This means that any underlying causes of
errors, defects, or fiber interruptions are no longer exposed in the error
channel.

This function is useful when you want to remove the detailed error tracking
provided by `sandbox` and return to the standard error handling for
your effect. Once unsandboxed, the effect behaves as if `sandbox` was
never applied.

**See**

- `sandbox` to expose the full cause of failures, defects, or interruptions.

**Signature**

```ts
declare const unsandbox: <A, E, R>(self: Effect<A, Cause.Cause<E>, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L4683)

Since v2.0.0