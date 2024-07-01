# die

Creates a `Micro` effect that will die with the specified error.

This will result in a `CauseDie`, where the error is not tracked at
the type level.

To import and use `die` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.die
```

**Signature**

```ts
export declare const die: (defect: unknown) => Micro<never>
```
