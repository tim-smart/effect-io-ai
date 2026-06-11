Package: `@effect/atom-react`<br />
Module: `Hooks`<br />

## Hooks.useAtomSet

Mounts a writable atom and returns a setter without subscribing to its value.

**When to use**

Use when a React component needs to update a writable atom without rendering
from that atom's value.

**Details**

The hook mounts the atom and returns a setter. In value mode the setter
accepts a write value or updater function; for `AsyncResult` atoms, `promise`
and `promiseExit` modes return a promise for the success value or full `Exit`.

**See**

- `useAtom` for reading and updating the same writable atom

**Signature**

```ts
declare const useAtomSet: <R, W, Mode extends "value" | "promise" | "promiseExit" = never>(atom: Atom.Writable<R, W>, options?: { readonly mode?: ([R] extends [AsyncResult.AsyncResult<any, any>] ? Mode : "value") | undefined; }) => "promise" extends Mode ? ((value: W) => Promise<AsyncResult.AsyncResult.Success<R>>) : "promiseExit" extends Mode ? ((value: W) => Promise<Exit.Exit<AsyncResult.AsyncResult.Success<R>, AsyncResult.AsyncResult.Failure<R>>>) : ((value: W | ((value: R) => W)) => void)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/Hooks.ts#L209)

Since v4.0.0