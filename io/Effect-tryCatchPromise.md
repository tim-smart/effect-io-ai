# tryCatchPromise

Create an `Effect` that when executed will construct `evaluate` and wait for
its result, errors will be handled using `onReject`.

To import and use `tryCatchPromise` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.tryCatchPromise
```

**Signature**

```ts
export declare const tryCatchPromise: <E, A>(
  evaluate: LazyArg<Promise<A>>,
  onReject: (reason: unknown) => E
) => Effect<never, E, A>
```
