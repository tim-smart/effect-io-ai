# failWith

Creates a `Micro` effect that will fail with the specified `Failure`.

To import and use `failWith` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.failWith
```

**Signature**

```ts
export declare const failWith: <E>(failure: Failure<E>) => Micro<never, E, never>
```
