# tryCatchPromise

Create an `Effect` that when executed will construct `evaluate` and wait for
its result, errors will be handled using `onReject`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const tryCatchPromise: <E, A>(
  evaluate: LazyArg<Promise<A>>,
  onReject: (reason: unknown) => E
) => Effect<never, E, A>
```
