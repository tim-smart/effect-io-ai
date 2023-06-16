# tryCatchPromise

Create an `Effect` that when executed will construct `evaluate` and wait for
its result, errors will be handled using `onReject`.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const tryCatchPromise: <E, A>(
  evaluate: LazyArg<Promise<A>>,
  onReject: (reason: unknown) => E
) => Effect<never, E, A>
```
