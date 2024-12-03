# succeed

Creates a `Micro` effect that will succeed with the specified constant value.

To import and use `succeed` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.succeed
```

**Signature**

```ts
export declare const succeed: <A>(value: A) => Micro<A>
```
