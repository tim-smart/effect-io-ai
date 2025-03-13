Package: `effect`<br />
Module: `Runtime`<br />

## Runtime.runPromiseExit

Runs the `Effect`, returning a JavaScript `Promise` that will be resolved
with the `Exit` state of the effect once the effect has been executed.

This method is effectful and should only be used at the edges of your
program.

**Signature**

```ts
declare const runPromiseExit: <R>(runtime: Runtime<R>) => <A, E>(effect: Effect.Effect<A, E, R>, options?: { readonly signal?: AbortSignal; } | undefined) => Promise<Exit.Exit<A, E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Runtime.ts#L160)

Since v2.0.0