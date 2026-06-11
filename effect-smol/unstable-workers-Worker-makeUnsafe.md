Package: `effect`<br />
Module: `Worker`<br />

## Worker.makeUnsafe

Wraps platform-specific send and run functions into a `Worker`, translating
platform ready/data messages and running the optional `onSpawn` effect when
the worker reports readiness.

**Signature**

```ts
declare const makeUnsafe: (options: { readonly send: (message: unknown, transfers?: ReadonlyArray<unknown>) => Effect.Effect<void, WorkerError>; readonly run: <A, E, R>(handler: (message: PlatformMessage) => Effect.Effect<A, E, R>) => Effect.Effect<never, E | WorkerError, R>; }) => Worker<any, any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Worker.ts#L66)

Since v4.0.0