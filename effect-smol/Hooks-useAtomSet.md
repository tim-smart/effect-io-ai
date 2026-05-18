Package: `@effect/atom-react`<br />
Module: `Hooks`<br />

## Hooks.useAtomSet

Mounts a writable atom and returns a setter without subscribing to its value.

**Signature**

```ts
declare const useAtomSet: <R, W, Mode extends "value" | "promise" | "promiseExit" = never>(atom: Atom.Writable<R, W>, options?: { readonly mode?: ([R] extends [AsyncResult.AsyncResult<any, any>] ? Mode : "value") | undefined; }) => "promise" extends Mode ? ((value: W) => Promise<AsyncResult.AsyncResult.Success<R>>) : "promiseExit" extends Mode ? ((value: W) => Promise<Exit.Exit<AsyncResult.AsyncResult.Success<R>, AsyncResult.AsyncResult.Failure<R>>>) : ((value: W | ((value: R) => W)) => void)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/Hooks.ts#L177)

Since v4.0.0