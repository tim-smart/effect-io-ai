# make

Convert a Layer into an ManagedRuntime, that can be used to run Effect's using
your services.

To import and use `make` from the "ManagedRuntime" module:

ts
import \* as ManagedRuntime from "effect/ManagedRuntime"
// Can be accessed like this
ManagedRuntime.make
undefined

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
export declare const make: <R, E>(
  layer: Layer.Layer<R, E, never>,
  memoMap?: Layer.MemoMap | undefined
) => ManagedRuntime<R, E>
```
