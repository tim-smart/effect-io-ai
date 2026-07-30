Package: `effect`<br />
Module: `Channel`<br />

## Channel.runScoped

Run the channel until it finishes with a done value or fails with an error.
The channel must not read any input or write any output.

Closing the channel, which includes execution of all the finalizers
attached to the channel will be added to the current scope as a finalizer.

**Signature**

```ts
declare const runScoped: <OutErr, InErr, OutDone, InDone, Env>(self: Channel<never, unknown, OutErr, InErr, OutDone, InDone, Env>) => Effect.Effect<OutDone, OutErr, Env | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1966)

Since v3.11.0