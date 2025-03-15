Package: `effect`<br />
Module: `Effect`<br />

## Effect.never

An effect that that runs indefinitely and never produces any result. The
moral equivalent of `while(true) {}`, only without the wasted CPU cycles.

**When to Use**

It could be useful for long-running background tasks or to simulate waiting
behavior without actually consuming resources. This effect is ideal for cases
where you want to keep the program alive or in a certain state without
performing any active work.

**Signature**

```ts
declare const never: Effect<never, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L3039)

Since v2.0.0