# failWithSync

Creates a `Micro` effect that will fail with the lazily evaluated `Failure`.

To import and use `failWithSync` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.failWithSync
```

**Signature**

```ts
export declare const failWithSync: <E>(failure: LazyArg<Failure<E>>) => Micro<never, E, never>
```
