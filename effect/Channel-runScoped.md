# runScoped

Run the channel until it finishes with a done value or fails with an error.
The channel must not read any input or write any output.

Closing the channel, which includes execution of all the finalizers
attached to the channel will be added to the current scope as a finalizer.

To import and use `runScoped` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.runScoped
undefined

**Signature**

```ts
export declare const runScoped: <OutErr, InErr, OutDone, InDone, Env>(
  self: Channel<never, unknown, OutErr, InErr, OutDone, InDone, Env>
) => Effect.Effect<OutDone, OutErr, Env | Scope.Scope>
```
