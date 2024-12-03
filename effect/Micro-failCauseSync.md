# failCauseSync

Creates a `Micro` effect that will fail with the lazily evaluated `MicroCause`.

To import and use `failCauseSync` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.failCauseSync
undefined

**Signature**

```ts
export declare const failCauseSync: <E>(evaluate: LazyArg<MicroCause<E>>) => Micro<never, E>
```
