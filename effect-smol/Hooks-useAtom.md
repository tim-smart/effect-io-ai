Package: `@effect/atom-react`<br />
Module: `Hooks`<br />

## Hooks.useAtom

Subscribes to a writable atom and returns its current value together with a
setter for updating it.

**Signature**

```ts
declare const useAtom: <R, W, const Mode extends "value" | "promise" | "promiseExit" = never>(atom: Atom.Writable<R, W>, options?: { readonly mode?: ([R] extends [AsyncResult.AsyncResult<any, any>] ? Mode : "value") | undefined; }) => readonly [value: R, write: "promise" extends Mode ? ((value: W) => Promise<AsyncResult.AsyncResult.Success<R>>) : "promiseExit" extends Mode ? ((value: W) => Promise<Exit.Exit<AsyncResult.AsyncResult.Success<R>, AsyncResult.AsyncResult.Failure<R>>>) : ((value: W | ((value: R) => W)) => void)]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/Hooks.ts#L221)

Since v4.0.0