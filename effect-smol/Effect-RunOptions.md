Package: `effect`<br />
Module: `Effect`<br />

## Effect.RunOptions

Configuration options for running Effect programs, providing control over
interruption and scheduling behavior.

**Signature**

```ts
export interface RunOptions {
  readonly signal?: AbortSignal | undefined
  readonly scheduler?: Scheduler | undefined
  readonly uninterruptible?: boolean | undefined
  readonly onFiberStart?: ((fiber: Fiber<unknown, unknown>) => void) | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8097)

Since v4.0.0