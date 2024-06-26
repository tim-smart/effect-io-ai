# fromResult

Converts a `Result` into a `Micro` effect.

To import and use `fromResult` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.fromResult
```

**Signature**

```ts
export declare const fromResult: <A, E>(self: Result<A, E>) => Micro<A, E, never>
```
