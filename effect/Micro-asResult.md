# asResult

Access the `Result` of the given `Micro` effect.

To import and use `asResult` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.asResult
```

**Signature**

```ts
export declare const asResult: <A, E, R>(self: Micro<A, E, R>) => Micro<Result<A, E>, never, R>
```
