# tryCatch

Imports a synchronous side-effect into a pure value, translating any
thrown exceptions into typed failed effects.

To import and use `tryCatch` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.tryCatch
```

**Signature**

```ts
export declare const tryCatch: <E, A>(attempt: LazyArg<A>, onThrow: (u: unknown) => E) => Effect<never, E, A>
```
