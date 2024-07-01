# failCauseSync

Creates a `Micro` effect that will fail with the lazily evaluated `MicroCause`.

To import and use `failCauseSync` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.failCauseSync
```

**Signature**

```ts
export declare const failCauseSync: <E>(cause: LazyArg<MicroCause<E>>) => Micro<never, E, never>
```
