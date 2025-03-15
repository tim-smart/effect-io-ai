Package: `effect`<br />
Module: `Effect`<br />

## Effect.withClockScoped

Sets the implementation of the `Clock` service to the specified value and
restores it to its original value when the scope is closed.

**Signature**

```ts
declare const withClockScoped: <C extends Clock.Clock>(clock: C) => Effect<void, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6745)

Since v2.0.0