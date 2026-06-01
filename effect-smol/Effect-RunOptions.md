Package: `effect`<br />
Module: `Effect`<br />

## Effect.RunOptions

Configuration options for running Effect programs, providing control over
interruption and scheduling behavior.

**When to use**

Use to pass cancellation, scheduler, interruptibility, and fiber-start hooks
when running an `Effect` at a program boundary.

**Details**

`signal` interrupts the fiber, `scheduler` provides the scheduler service,
`uninterruptible` starts the fiber uninterruptibly, and `onFiberStart`
receives the created fiber.

**See**

- `runFork` for starting a fiber with these options
- `runCallback` for callback-based running with these options
- `runPromise` for promise-based running with these options
- `runPromiseExit` for promise-based running that returns an `Exit`

**Signature**

```ts
export interface RunOptions {
  readonly signal?: AbortSignal | undefined
  readonly scheduler?: Scheduler | undefined
  readonly uninterruptible?: boolean | undefined
  readonly onFiberStart?: ((fiber: Fiber<unknown, unknown>) => void) | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8773)

Since v4.0.0