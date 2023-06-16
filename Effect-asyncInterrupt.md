# asyncInterrupt

Imports an asynchronous side-effect into an effect allowing control of interruption.

The `FiberId` of the fiber that may complete the async callback may be
provided to allow for better diagnostics.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const asyncInterrupt: <R, E, A>(
  register: (callback: (effect: Effect<R, E, A>) => void) => Effect<R, never, void>,
  blockingOn?: FiberId.FiberId
) => Effect<R, E, A>
```
