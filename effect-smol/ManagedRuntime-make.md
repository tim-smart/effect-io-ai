Package: `effect`<br />
Module: `ManagedRuntime`<br />

## ManagedRuntime.make

Convert a Layer into an ManagedRuntime, that can be used to run Effect's using
your services.

**Example**

```ts
import { Console, Effect, Layer, ManagedRuntime, Context } from "effect"

class Notifications extends Context.Service<Notifications, {
  readonly notify: (message: string) => Effect.Effect<void>
}>()("Notifications") {
  static readonly layer = Layer.succeed(this)({
    notify: Effect.fn("Notifications.notify")((message) => Console.log(message))
  })
}

async function main() {
  const runtime = ManagedRuntime.make(Notifications.layer)
  await runtime.runPromise(Effect.flatMap(
    Notifications.asEffect(),
    (_) => _.notify("Hello, world!")
  ))
  await runtime.dispose()
}

main()
```

**Signature**

```ts
declare const make: <R, ER>(layer: Layer.Layer<R, ER, never>, options?: { readonly memoMap?: Layer.MemoMap | undefined; } | undefined) => ManagedRuntime<R, ER>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ManagedRuntime.ts#L160)

Since v2.0.0