Package: `effect`<br />
Module: `Runtime`<br />

## Runtime.runPromise

Runs the `Effect`, returning a JavaScript `Promise` that will be resolved
with the value of the effect once the effect has been executed, or will be
rejected with the first error or exception throw by the effect.

This method is effectful and should only be used at the edges of your
program.

**Signature**

```ts
declare const runPromise: { <R>(runtime: Runtime<R>): <A, E>(effect: Effect.Effect<A, E, R>, options?: { readonly signal?: AbortSignal; } | undefined) => Promise<A>; <R, A, E>(runtime: Runtime<R>, effect: Effect.Effect<A, E, R>, options?: { readonly signal?: AbortSignal; } | undefined): Promise<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Runtime.ts#L166)

Since v2.0.0