Package: `effect`<br />
Module: `ManagedRuntime`<br />

## ManagedRuntime.make

Convert a Layer into an ManagedRuntime, that can be used to run Effect's using
your services.

**Example**

```ts
import { Console, Effect, Layer, ManagedRuntime } from "effect"

class Notifications extends Effect.Tag("Notifications")<
  Notifications,
  { readonly notify: (message: string) => Effect.Effect<void> }
>() {
  static Live = Layer.succeed(this, { notify: (message) => Console.log(message) })
}

async function main() {
  const runtime = ManagedRuntime.make(Notifications.Live)
  await runtime.runPromise(Notifications.notify("Hello, world!"))
  await runtime.dispose()
}

main()
```

**Signature**

```ts
declare const make: <R, E>(layer: Layer.Layer<R, E, never>, memoMap?: Layer.MemoMap | undefined) => ManagedRuntime<R, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ManagedRuntime.ts#L177)

Since v2.0.0