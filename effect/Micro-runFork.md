# runFork

Execute the `Micro` effect and return a `Handle` that can be awaited, joined,
or aborted.

You can listen for the result by adding an observer using the handle's
`addObserver` method.

To import and use `runFork` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.runFork
undefined

**Example**

```ts
import * as Micro from "effect/Micro"

const handle = Micro.succeed(42).pipe(Micro.delay(1000), Micro.runFork)

handle.addObserver((exit) => {
  console.log(exit)
})
```

**Signature**

```ts
export declare const runFork: <A, E>(
  effect: Micro<A, E>,
  options?: { readonly signal?: AbortSignal | undefined; readonly scheduler?: MicroScheduler | undefined } | undefined
) => Handle<A, E>
```
