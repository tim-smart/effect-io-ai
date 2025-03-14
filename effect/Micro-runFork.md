Package: `effect`<br />
Module: `Micro`<br />

## Micro.runFork

Execute the `Micro` effect and return a `MicroFiber` that can be awaited, joined,
or aborted.

You can listen for the result by adding an observer using the handle's
`addObserver` method.

**Example**

```ts
import * as Micro from "effect/Micro"

const handle = Micro.succeed(42).pipe(
  Micro.delay(1000),
  Micro.runFork
)

handle.addObserver((exit) => {
  console.log(exit)
})
```

**Signature**

```ts
declare const runFork: <A, E>(effect: Micro<A, E>, options?: { readonly signal?: AbortSignal | undefined; readonly scheduler?: MicroScheduler | undefined; } | undefined) => MicroFiberImpl<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L4214)

Since v3.4.0