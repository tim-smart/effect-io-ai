# fromResultSync

Converts a lazy `Result` into a `Micro` effect.

To import and use `fromResultSync` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.fromResultSync
```

**Signature**

```ts
export declare const fromResultSync: <A, E>(self: LazyArg<Result<A, E>>) => Micro<A, E, never>
```
