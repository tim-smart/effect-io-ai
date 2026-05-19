Package: `effect`<br />
Module: `ManagedRuntime`<br />

## ManagedRuntime.make

Creates a `ManagedRuntime` from a layer.

**Details**
The layer is built lazily on first use and its context is cached for
subsequent runs. Resources acquired by the layer are owned by the runtime and
are released when `dispose` or `disposeEffect` is run.

**Example** (Creating a managed runtime)

```ts
import { Context, Effect, Layer, ManagedRuntime } from "effect"

class Notifications extends Context.Service<Notifications, {
  readonly notify: (message: string) => Effect.Effect<void>
}>()("Notifications") {
  static readonly layer = Layer.succeed(this)({
    notify: Effect.fn("Notifications.notify")((message) =>
      Effect.sync(() => console.log(message))
    )
  })
}

const runtime = ManagedRuntime.make(Notifications.layer)

const program = Effect.flatMap(
  Notifications,
  (_) => _.notify("Hello, world!")
).pipe(Effect.ensuring(runtime.disposeEffect))

runtime.runPromise(program)
// Hello, world!
```

**Signature**

```ts
declare const make: <R, ER>(layer: Layer.Layer<R, ER, never>, options?: { readonly memoMap?: Layer.MemoMap | undefined; } | undefined) => ManagedRuntime<R, ER>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ManagedRuntime.ts#L219)

Since v2.0.0